package com.zhengjj.healthmanagement.service;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhengjj.healthmanagement.dao.AdminDao;
import com.zhengjj.healthmanagement.dao.ReserveDao;
import com.zhengjj.healthmanagement.dao.TypeDao;
import com.zhengjj.healthmanagement.entity.*;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


@Service
public class ReserveService {

    //关联
    @Resource
    private ReserveDao reserveDao;
    @Resource
    private TypeDao typeDao;
    @Resource
    private AdminDao adminDao;


    public PageInfo<Reserve> findBySearch(Params params) {
        // 开启分页查询
        PageHelper.startPage(params.getPageNum(), params.getPageSize());
        // 接下来的查询会自动按照当前开启的分页设置来查询
        List<Reserve> list = reserveDao.findBySearch(params);
//        多表关联方法1
        if (CollectionUtil.isEmpty(list)) {
            return PageInfo.of(new ArrayList<>());
        }
//        获取套餐ID
        for (Reserve reserve : list) {
            if (ObjectUtil.isNotEmpty(reserve.getSetmealId())) {
                Type type = typeDao.selectByPrimaryKey(reserve.getSetmealId());
                if (ObjectUtil.isNotEmpty(type)) {
                    reserve.setSetmealName(type.getName());
                }
            }
//            获取userID
            if (ObjectUtil.isNotEmpty(reserve.getUserId())) {
                Admin admin = adminDao.selectByPrimaryKey(reserve.getUserId());
                if (ObjectUtil.isNotEmpty(admin)) {
                    reserve.setUserName(admin.getName());
                }
            }

        }
        return PageInfo.of(list);
    }
    public void add(Reserve reserve) {
        reserveDao.insertSelective(reserve);
    }
    public void update(Reserve reserve) {
        reserveDao.updateByPrimaryKeySelective(reserve);
    }
    public void delete(Integer id) {
        reserveDao.deleteByPrimaryKey(id);
    }
    public List<Reserve> findAll() {
        return reserveDao.selectAll();
    }
}

