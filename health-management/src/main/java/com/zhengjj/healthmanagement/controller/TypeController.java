package com.zhengjj.healthmanagement.controller;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.io.IoUtil;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.github.pagehelper.PageInfo;
import com.zhengjj.healthmanagement.common.AutoLog;
import com.zhengjj.healthmanagement.common.Result;
import com.zhengjj.healthmanagement.entity.Type;
import com.zhengjj.healthmanagement.entity.Params;
import com.zhengjj.healthmanagement.exception.CustomException;
import com.zhengjj.healthmanagement.service.TypeService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


//@CrossOrigin
@RestController
@RequestMapping("/type")
public class TypeController {

    @Resource
    private TypeService typeService;

    @GetMapping
    public Result findAll() {
        return Result.success(typeService.findAll());
    }

    @GetMapping("/search")
    public Result findBySearch(Params params) {
        PageInfo<Type> info = typeService.findBySearch(params);
        return Result.success(info);
    }

    @PostMapping
    @AutoLog("更新套餐预定信息")
    public Result save(@RequestBody Type type) {
        if (type.getId() == null) {
            typeService.add(type);
        } else {
            typeService.update(type);
        }
        return Result.success();
    }

    @DeleteMapping("/{id}")
    @AutoLog("删除套餐预定信息")
    public Result delete(@PathVariable Integer id) {
        typeService.delete(id);
        return Result.success();
    }

    @PutMapping("/delBatch")
    @AutoLog("批量删除套餐预定信息")
    public Result delBatch(@RequestBody List<Type> list){
        for (Type type:list){
            typeService.delete(type.getId());
        }
        return Result.success();
    }

    @GetMapping("/export")
    @AutoLog("批量导出套餐预定信息")
    public Result export(HttpServletResponse response) throws IOException {
        // 思考：
        // 要一行一行的组装数据，塞到一个list里面
        // 每一行数据，其实就对应数据库表中的一行数据，也就是对应Java的一个实体类Type
        // 怎么知道它某一列就是对应某个表头呢？？ 需要映射数据，我们需要一个Map<key,value>，把这个map塞到list里

        // 1. 从数据库中查询出所有数据
        List<Type> all = typeService.findAll();

        if (CollectionUtil.isEmpty(all)) {
            throw new CustomException("未找到数据");
        }

        // 2. 定义一个 List，存储处理之后的数据，用于塞到 list 里
        List<Map<String, Object>> list = new ArrayList<>(all.size());

        // 3. 定义Map<key,value> 出来，遍历每一条数据，然后封装到 Map<key,value> 里，把这个 map 塞到 list 里
        for (Type type : all) {
            Map<String, Object> row = new HashMap<>();
            row.put("分类名称", type.getName());
            row.put("分类描述", type.getDescription());
            row.put("套餐价格/元", type.getTypeprice());
            list.add(row);
        }

        // 4. 创建一个 ExcelWriter，把 list 数据用这个writer写出来（生成出来）
        ExcelWriter wr = ExcelUtil.getWriter(true);
        wr.write(list, true);

        // 5. 把这个 excel 下载下来
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        response.setHeader("Content-Disposition","attachment;filename=type.xlsx");
        ServletOutputStream out = response.getOutputStream();
        wr.flush(out, true);
        wr.close();
        IoUtil.close(System.out);

        return Result.success();
    }

    @PostMapping("/upload")
    @AutoLog("批量导入套餐预定信息")
    public Result upload(MultipartFile file) throws IOException {
        System.out.println("检测是否进入");
        List<Type> infoList = ExcelUtil.getReader(file.getInputStream()).readAll(Type.class);
        if (!CollectionUtil.isEmpty(infoList)) {
            for (Type type : infoList) {
                try {
                    typeService.add(type);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return Result.success();
    }
}