package com.zhengjj.healthmanagement.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhengjj.healthmanagement.dao.CheckgroupDao;
import com.zhengjj.healthmanagement.entity.Checkgroup;
import com.zhengjj.healthmanagement.entity.Params;
import com.zhengjj.healthmanagement.exception.CustomException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class CheckgroupService {

    @Resource
    private CheckgroupDao checkgroupDao;


    public PageInfo<Checkgroup> findBySearch(Params params) {
        // 开启分页查询
        PageHelper.startPage(params.getPageNum(), params.getPageSize());
        // 接下来的查询会自动按照当前开启的分页设置来查询
        List<Checkgroup> list = checkgroupDao.findBySearch(params);
        return PageInfo.of(list);
    }
    public void add(Checkgroup checkgroup) {
        if(checkgroup.getName() == null || "".equals(checkgroup.getName())){
            throw new CustomException("检查组名称不能为空！");
        }
        if(checkgroup.getSex() == null || "".equals(checkgroup.getSex())){
            throw new CustomException("适用性别不能为空！");
        }
        checkgroupDao.insertSelective(checkgroup);
    }
    public void update(Checkgroup checkgroup) {
        checkgroupDao.updateByPrimaryKeySelective(checkgroup);
    }
    public void delete(Integer id) {
        checkgroupDao.deleteByPrimaryKey(id);
    }

    public List<Checkgroup> findAll() {
        return checkgroupDao.selectAll();
    }
}

