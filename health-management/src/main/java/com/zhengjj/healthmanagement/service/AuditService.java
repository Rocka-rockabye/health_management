package com.zhengjj.healthmanagement.service;

import cn.hutool.core.util.ObjectUtil;
import com.zhengjj.healthmanagement.common.JwtTokenUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhengjj.healthmanagement.dao.AdminDao;
import com.zhengjj.healthmanagement.dao.AuditDao;
import com.zhengjj.healthmanagement.entity.Admin;
import com.zhengjj.healthmanagement.entity.Params;
import com.zhengjj.healthmanagement.entity.Audit;
import com.zhengjj.healthmanagement.exception.CustomException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class AuditService {

    @Resource
    private AuditDao auditDao;


    public void add(Audit audit) {
        if(audit.getStudentId() == null || "".equals(audit.getStudentId())){
            throw new CustomException("学号不能为空！");
        }
        if(audit.getStudentId().length() !=12 && audit.getStudentId() != null){
            throw new CustomException("请输入12位数的学号！");
        }
        if(audit.getMajorClass() == null || "".equals(audit.getMajorClass())){
            throw new CustomException("专业班级不能为空！");
        }
        if(audit.getTime() == null || "".equals(audit.getTime())){
            throw new CustomException("提交日期不能为空！");
        }
        auditDao.insertSelective(audit);
    }
    public void update(Audit audit) {
        auditDao.updateByPrimaryKeySelective(audit);
    }
    public void delete(Integer id) {
        auditDao.deleteByPrimaryKey(id);
    }
    public PageInfo<Audit> findBySearch(Params params) {

//      用于信息认证时，自己看不到其他用户的信息认证，只能看到自己的信息
        Admin user = JwtTokenUtils.getCurrentUser();
        if (ObjectUtil.isNull(user)) {
            throw new CustomException("从token中未解析到用户信息，请重新登录");
        }
        if ("ROLE_STUDENT".equals(user.getRole())) {
            params.setUserId(user.getId());
        }
        // 开启分页查询
        PageHelper.startPage(params.getPageNum(), params.getPageSize());
        // 接下来的查询会自动按照当前开启的分页设置来查询
        List<Audit> list = auditDao.findBySearch(params);
        return PageInfo.of(list);
    }
}

