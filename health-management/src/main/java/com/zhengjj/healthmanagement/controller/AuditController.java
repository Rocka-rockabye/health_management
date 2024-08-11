package com.zhengjj.healthmanagement.controller;


import com.github.pagehelper.PageInfo;
import com.zhengjj.healthmanagement.common.AutoLog;
import com.zhengjj.healthmanagement.common.Result;
import com.zhengjj.healthmanagement.entity.Audit;
import com.zhengjj.healthmanagement.entity.Params;
import com.zhengjj.healthmanagement.service.AuditService;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;

//@CrossOrigin
@RestController
@RequestMapping("/audit")
public class AuditController {

    @Resource
    private AuditService auditService;

    @GetMapping("/search")
    public Result findBySearch(Params params) {
        PageInfo<Audit> info = auditService.findBySearch(params);
        return Result.success(info);
    }

    @PostMapping
    @AutoLog("更新审核信息")
    public Result save(@RequestBody Audit audit) {

        if (audit.getId() == null) {
            auditService.add(audit);
        } else {
            auditService.update(audit);
        }
        return Result.success();
    }

    @DeleteMapping("/{id}")
    @AutoLog("删除审核信息")
    public Result delete(@PathVariable Integer id) {
        auditService.delete(id);
        return Result.success();
    }
}