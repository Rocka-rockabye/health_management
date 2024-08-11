package com.zhengjj.healthmanagement.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhengjj.healthmanagement.dao.TypeDao;
import com.zhengjj.healthmanagement.entity.Type;
import com.zhengjj.healthmanagement.entity.Params;
import com.zhengjj.healthmanagement.exception.CustomException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class TypeService {

    @Resource
    private TypeDao typeDao;


    public PageInfo<Type> findBySearch(Params params) {
        // 开启分页查询
        PageHelper.startPage(params.getPageNum(), params.getPageSize());
        // 接下来的查询会自动按照当前开启的分页设置来查询
        List<Type> list = typeDao.findBySearch(params);
        return PageInfo.of(list);
    }
    public void add(Type type) {
        if(type.getName() == null || "".equals(type.getName())){
            throw new CustomException("套餐类别不能为空！");
        }
        if(type.getDescription() == null || "".equals(type.getDescription())){
            throw new CustomException("套餐描述不能为空！");
        }
        if(type.getTypeprice() == null || "".equals(type.getTypeprice())){
            throw new CustomException("套餐价格不能为空！");
        }
        typeDao.insertSelective(type);
    }
    public void update(Type type) {
        typeDao.updateByPrimaryKeySelective(type);
    }
    public void delete(Integer id) {
        typeDao.deleteByPrimaryKey(id);
    }
    public List<Type> findAll() {
        return typeDao.selectAll();
    }
}

