package com.zhengjj.healthmanagement.controller;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.io.IoUtil;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.github.pagehelper.PageInfo;
import com.zhengjj.healthmanagement.common.AutoLog;
import com.zhengjj.healthmanagement.common.Result;
import com.zhengjj.healthmanagement.entity.Params;
import com.zhengjj.healthmanagement.entity.Checkitem;
import com.zhengjj.healthmanagement.exception.CustomException;
import com.zhengjj.healthmanagement.service.CheckitemService;
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
@RequestMapping("/checkitem")
public class CheckitemController {

    @Resource
    private CheckitemService checkitemService;

    @GetMapping("/search")
    public Result findBySearch(Params params) {
        PageInfo<Checkitem> info = checkitemService.findBySearch(params);
        return Result.success(info);
    }

    @PostMapping
    @AutoLog("更新检查项信息")
    public Result save(@RequestBody Checkitem checkitem) {
        if (checkitem.getId() == null) {
            checkitemService.add(checkitem);
        } else {
            checkitemService.update(checkitem);
        }
        return Result.success();
    }

    @DeleteMapping("/{id}")
    @AutoLog("删除检查项信息")
    public Result delete(@PathVariable Integer id) {
        checkitemService.delete(id);
        return Result.success();
    }

    @PutMapping("/delBatch")
    @AutoLog("批量删除检查项信息")
    public Result delBatch(@RequestBody List<Checkitem> list){
        for (Checkitem checkitem:list){
            checkitemService.delete(checkitem.getId());
        }
        return Result.success();
    }

    @GetMapping("/export")
    @AutoLog("批量导出检查项信息")
    public Result export(HttpServletResponse response) throws IOException {
        // 思考：
        // 要一行一行的组装数据，塞到一个list里面
        // 每一行数据，其实就对应数据库表中的一行数据，也就是对应Java的一个实体类Checkgroup
        // 我们怎么知道它某一列就是对应某个表头呢？？ 需要映射数据，我们需要一个Map<key,value>，把这个map塞到list里
        // 1. 从数据库中查询出所有数据
        List<Checkitem> all = checkitemService.findAll();
        if (CollectionUtil.isEmpty(all)) {
            throw new CustomException("未找到数据");
        }
        // 2. 定义一个 List，存储处理之后的数据，用于塞到 list 里
        List<Map<String, Object>> list = new ArrayList<>(all.size());
        // 3. 定义Map<key,value> 出来，遍历每一条数据，然后封装到 Map<key,value> 里，把这个 map 塞到 list 里
        for (Checkitem checkitem : all) {
            Map<String, Object> row = new HashMap<>();
            row.put("检查项编码", checkitem.getCode());
            row.put("检查项名称", checkitem.getName());
            row.put("适用性别", checkitem.getSex());
            row.put("适用年龄/周岁", checkitem.getAge());
            row.put("检查类型", checkitem.getType());
            row.put("检查价格/元", checkitem.getPrice());
            row.put("注意事项", checkitem.getAttention());
            row.put("检查项说明", checkitem.getRemark());

            list.add(row);
        }
        // 4. 创建一个 ExcelWriter，把 list 数据用这个writer写出来（生成出来）
        ExcelWriter wr = ExcelUtil.getWriter(true);
        wr.write(list, true);
        // 5. 把这个 excel 下载下来
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        response.setHeader("Content-Disposition", "attachment;filename=checkitem.xlsx");
        ServletOutputStream out = response.getOutputStream();
        wr.flush(out, true);
        wr.close();
        IoUtil.close(System.out);
        return Result.success();
        }

    //    批量导入
    @PostMapping("/upload")
    @AutoLog("批量导入检查项信息")
    public Result upload(MultipartFile file) throws IOException {
        System.out.println("检测是否进入");
        List<Checkitem> infoList = ExcelUtil.getReader(file.getInputStream()).readAll(Checkitem.class);
        if (!CollectionUtil.isEmpty(infoList)) {
            for (Checkitem checkitem : infoList) {
                try {
                    checkitemService.add(checkitem);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return Result.success();
    }

}