package com.zhengjj.healthmanagement.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhengjj.healthmanagement.dao.CheckitemDao;
import com.zhengjj.healthmanagement.entity.Params;
import com.zhengjj.healthmanagement.entity.Checkitem;
import com.zhengjj.healthmanagement.exception.CustomException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class CheckitemService {

    @Resource
    private CheckitemDao checkitemDao;


    public PageInfo<Checkitem> findBySearch(Params params) {
        // 开启分页查询
        PageHelper.startPage(params.getPageNum(), params.getPageSize());
        // 接下来的查询会自动按照当前开启的分页设置来查询
        List<Checkitem> list = checkitemDao.findBySearch(params);
        return PageInfo.of(list);
    }
    public void add(Checkitem checkitem) {
        if(checkitem.getName() == null || "".equals(checkitem.getName())){
            throw new CustomException("检查项名称不能为空！");
        }
        if(checkitem.getSex() == null || "".equals(checkitem.getSex())){
            throw new CustomException("适用性别不能为空！");
        }
        if(checkitem.getAge() == null || "".equals(checkitem.getAge())){
            throw new CustomException("适用年龄不能为空！");
        }
        if(checkitem.getType() == null || "".equals(checkitem.getType())){
            throw new CustomException("检查类型不能为空！");
        }
        if(checkitem.getPrice() == null || "".equals(checkitem.getPrice())){
            throw new CustomException("检查价格不能为空！");
        }
        checkitemDao.insertSelective(checkitem);
    }
    public void update(Checkitem checkitem) {
        checkitemDao.updateByPrimaryKeySelective(checkitem);
    }
    public void delete(Integer id) {
        checkitemDao.deleteByPrimaryKey(id);
    }
    public List<Checkitem> findAll() {
        return checkitemDao.selectAll();
    }
}

