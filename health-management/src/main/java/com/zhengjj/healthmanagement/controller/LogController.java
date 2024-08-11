package com.zhengjj.healthmanagement.controller;

import com.github.pagehelper.PageInfo;
import com.zhengjj.healthmanagement.common.Result;
import com.zhengjj.healthmanagement.entity.Log;
import com.zhengjj.healthmanagement.entity.Params;
import com.zhengjj.healthmanagement.service.LogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;

//@CrossOrigin
@RestController
@RequestMapping("/log")
public class LogController {

    private static final Logger log = LoggerFactory.getLogger(LogController.class);

    @Resource
    private LogService logService;

    @PostMapping
    public Result save(@RequestBody Log log) {
        logService.add(log);
        return Result.success();
    }

//    分页查询
    @GetMapping("/search")
    public Result findBySearch(Params params) {
        log.info("拦截器已放行，正式调用接口内部，查询管理员信息");
        PageInfo<Log> info = logService.findBySearch(params);
        return Result.success(info);
    }
//    删除
    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        logService.delete(id);
        return Result.success();
    }
}