package com.zhengjj.healthmanagement.service;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import com.zhengjj.healthmanagement.dao.SetmealDao;
import com.zhengjj.healthmanagement.dao.TypeDao;
import com.zhengjj.healthmanagement.entity.Setmeal;
import com.zhengjj.healthmanagement.entity.Params;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhengjj.healthmanagement.entity.Type;
import com.zhengjj.healthmanagement.exception.CustomException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


@Service
public class SetmealService {

    @Resource
    private SetmealDao setmealDao;

    @Resource
    private TypeDao typeDao;

    public PageInfo<Setmeal> findBySearch(Params params) {
        // 开启分页查询
        PageHelper.startPage(params.getPageNum(), params.getPageSize());
        // 接下来的查询会自动按照当前开启的分页设置来查询
        List<Setmeal> list = setmealDao.findBySearch(params);
//        多表关联方法1
//        List<Setmeal> list = setmealDao.findBySearch(params);
//        if (CollectionUtil.isEmpty(list)) {
//            return PageInfo.of(new ArrayList<>());
//        }
//        for (Setmeal setmeal : list) {
//            if (ObjectUtil.isNotEmpty(setmeal.getTypeId())) {
//                Type type = typeDao.selectByPrimaryKey(setmeal.getTypeId());
//                if (ObjectUtil.isNotEmpty(type)) {
//                    setmeal.setTypeName(type.getName());
//                }
//            }
//        }
        return PageInfo.of(list);
    }
    public void add(Setmeal setmeal) {
        if(setmeal.getTypeId() == null || "".equals(setmeal.getTypeId())){
            throw new CustomException("套餐类别不能为空！");
        }
        if(setmeal.getName() == null || "".equals(setmeal.getName())){
            throw new CustomException("套餐名称不能为空！");
        }
        if(setmeal.getPrice() == null || "".equals(setmeal.getPrice())){
            throw new CustomException("套餐价格不能为空！");
        }
        if(setmeal.getSex() == null || "".equals(setmeal.getSex())){
            throw new CustomException("适用性别不能为空！");
        }
        if(setmeal.getAge() == null || "".equals(setmeal.getAge())){
            throw new CustomException("适用年龄不能为空！");
        }
        setmealDao.insertSelective(setmeal);
    }
    public void update(Setmeal setmeal) {

        setmealDao.updateByPrimaryKeySelective(setmeal);
    }
    public void delete(Integer id) {
        setmealDao.deleteByPrimaryKey(id);
    }

    public List<Setmeal> findAll() {
        return setmealDao.selectAll();
    }
}

