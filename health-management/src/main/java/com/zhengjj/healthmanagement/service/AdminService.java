package com.zhengjj.healthmanagement.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhengjj.healthmanagement.common.JwtTokenUtils;
import com.zhengjj.healthmanagement.dao.AdminDao;
import com.zhengjj.healthmanagement.entity.Admin;
import com.zhengjj.healthmanagement.entity.Params;
import com.zhengjj.healthmanagement.exception.CustomException;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service
public class AdminService {

    @Resource
    private AdminDao adminDao;

    public List<Admin> findAll() {
        return adminDao.selectAll();
    }
//    模糊查询
//    public List<Admin> findBySearch(Params params) {
//        return adminDao.findBySearch(params);
//    }
    public PageInfo<Admin> findBySearch(Params params) {
        // 开启分页查询
        PageHelper.startPage(params.getPageNum(), params.getPageSize());
        // 接下来的查询会自动按照当前开启的分页设置来查询
        List<Admin> list = adminDao.findBySearch(params);
        return PageInfo.of(list);
    }
    //    新增
    public void add(Admin admin) {
        // 1. 用户名一定要有，否则不让新增（后面需要用户名登录）
        if (admin.getName() == null || "".equals(admin.getName())) {
            throw new CustomException("用户名不能为空"); }
        // 2. 进行重复性判断，同一名字的管理员不允许重复新增：只要根据用户名去数据库查询一下就可以了
        Admin user = adminDao.findByName(admin.getName());
        if (user != null) {
            // 说明已经有了，这里我们就要提示前台不允许新增了
            throw new CustomException("该用户名已存在，请更换用户名");
        }
        if (admin.getAge() != null && admin.getAge().length()>2) {
            throw new CustomException("年龄不能超过2位数！");
        }
        if (admin.getRole() == null ||"".equals(admin.getRole())){
            throw new CustomException("身份不能为空！");
        }
        // 初始化一个密码
        if (admin.getPassword() == null) {
            admin.setPassword("123456");
        }
        adminDao.insertSelective(admin);
    }

    public void update(Admin admin) {
        adminDao.updateByPrimaryKeySelective(admin);
    }

//    删除
    public void delete(Integer id) {
        adminDao.deleteByPrimaryKey(id);
    }
//    登录
    public Admin login(Admin admin) {
        // 1. 进行一些非空判断
        if (admin.getName() == null || "".equals(admin.getName())) {
            throw new CustomException("用户名不能为空！");
        }
        if (admin.getPassword() == null || "".equals(admin.getPassword())) {
            throw new CustomException("密码不能为空！");
        }
//        // 2. 从数据库里面根据这个用户名和密码去查询对应的管理员信息，
//        Admin user = adminDao.findByName(admin.getName());
//        if (user == null) {
//            // 如果查出来没有，那说明输入的用户名有误，提示用户，不允许登录
//            throw new CustomException("用户名不存在！");
//        }
//        Admin user1 = adminDao.findByPassword(admin.getPassword());
//        if (user1 == null) {
//            // 如果查出来没有，那说明输入的密码有误，提示用户，不允许登录
//            throw new CustomException("密码输入错误！");
//        }
        Admin user = adminDao.findByNameAndPassword(admin.getName(),admin.getPassword());
        if (user == null) {
            // 如果查出来没有，那说明输入的用户名或者密码有误，提示用户，不允许登录
            throw new CustomException("用户名或密码输入错误！");
        }
        // 生成jwt token给前端
        String token = JwtTokenUtils.genToken(user.getId().toString(), user.getPassword());
        user.setToken(token);
        // 如果查出来了有，那说明确实有这个管理员，而且输入的用户名和密码都对；
        return user;
    }
    public Admin findById(Integer id) {
        return adminDao.selectByPrimaryKey(id);
    }
}
