package com.zhengjj.healthmanagement.controller;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.IoUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.github.pagehelper.PageInfo;
import com.zhengjj.healthmanagement.common.AutoLog;
import com.zhengjj.healthmanagement.common.Result;
import com.zhengjj.healthmanagement.entity.Params;
import com.zhengjj.healthmanagement.entity.Reserve;
import com.zhengjj.healthmanagement.exception.CustomException;
import com.zhengjj.healthmanagement.service.ReserveService;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


//@CrossOrigin
@RestController
@RequestMapping("/reserve")
public class ReserveController {

    @Resource
    private ReserveService reserveService;

    @GetMapping("/search")
    public Result findBySearch(Params params) {
        PageInfo<Reserve> info = reserveService.findBySearch(params);
        return Result.success(info);
    }

    @PostMapping
    @AutoLog("更新预定结果信息")
    public Result save(@RequestBody Reserve reserve) {
        if (reserve.getId() == null) {
            reserve.setTime(DateUtil.now());
            reserveService.add(reserve);
        } else {
            reserveService.update(reserve);
        }
        return Result.success();
    }
    @DeleteMapping("/{id}")
    @AutoLog("删除预定结果信息")
    public Result delete(@PathVariable Integer id) {
        reserveService.delete(id);
        return Result.success();
    }

    @PutMapping("/delBatch")
    @AutoLog("批量删除预定结果信息")
    public Result delBatch(@RequestBody List<Reserve> list){
        for (Reserve reserve:list){
            reserveService.delete(reserve.getId());
        }
        return Result.success();
    }

    @GetMapping("/export")
    @AutoLog("批量导出预定结果信息")
    public Result export(HttpServletResponse response) throws IOException {
        // 思考：
        // 要一行一行的组装数据，塞到一个list里面
        // 每一行数据，其实就对应数据库表中的一行数据，也就是对应Java的一个实体类Reserve
        // 怎么知道它某一列就是对应某个表头呢？？ 需要映射数据，我们需要一个Map<key,value>，把这个map塞到list里

        // 1. 从数据库中查询出所有数据
        List<Reserve> all = reserveService.findAll();

        if (CollectionUtil.isEmpty(all)) {
            throw new CustomException("未找到数据");
        }

        // 2. 定义一个 List，存储处理之后的数据，用于塞到 list 里
        List<Map<String, Object>> list = new ArrayList<>(all.size());

        // 3. 定义Map<key,value> 出来，遍历每一条数据，然后封装到 Map<key,value> 里，把这个 map 塞到 list 里
        for (Reserve reserve : all) {
            Map<String, Object> row = new HashMap<>();
            row.put("套餐类别", reserve.getSetmealId());
            row.put("预定人", reserve.getUserId());
            row.put("预定时间", reserve.getTime());
            row.put("最终检查结果", reserve.getCheckresult());
            list.add(row);
        }

        // 4. 创建一个 ExcelWriter，把 list 数据用这个writer写出来（生成出来）
        ExcelWriter wr = ExcelUtil.getWriter(true);
        wr.write(list, true);

        // 5. 把这个 excel 下载下来
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        response.setHeader("Content-Disposition","attachment;filename=reserve.xlsx");
        ServletOutputStream out = response.getOutputStream();
        wr.flush(out, true);
        wr.close();
        IoUtil.close(System.out);

        return Result.success();
    }
    @GetMapping("/echarts/bie")
    public Result bie() {
        // 查询出所有预定信息
        List<Reserve> list = reserveService.findAll();
        Map<String, Long> collect = list.stream()
                .filter(x -> ObjectUtil.isNotEmpty(x.getCheckresult()))
                .collect(Collectors.groupingBy(Reserve::getCheckresult, Collectors.counting()));
        // 最后返回给前端的数据结构
        List<Map<String, Object>> mapList = new ArrayList<>();
        if (CollectionUtil.isNotEmpty(collect)) {
            for (String key : collect.keySet()) {
                Map<String, Object> map = new HashMap<>();
                map.put("name", key);
                map.put("value", collect.get(key));
                mapList.add(map);
            }
        }
        return Result.success(mapList);
    }
    @GetMapping("/echarts/bar")
    public Result bar() {
        // 查询出所有套餐
        List<Reserve> list = reserveService.findAll();
        Map<String, Long> collect = list.stream()
                .filter(x -> ObjectUtil.isNotEmpty(x.getCheckresult()))
                .collect(Collectors.groupingBy(Reserve::getCheckresult, Collectors.counting()));

        List<String> xAxis = new ArrayList<>();
        List<Long> yAxis = new ArrayList<>();
        if (CollectionUtil.isNotEmpty(collect)) {
            for (String key : collect.keySet()) {
                xAxis.add(key);
                yAxis.add(collect.get(key));
            }
        }

        Map<String, Object> map = new HashMap<>();
        map.put("xAxis", xAxis);
        map.put("yAxis", yAxis);

        return Result.success(map);
    }
}