package com.zhengjj.healthmanagement.dao;

import com.zhengjj.healthmanagement.entity.Admin;
import com.zhengjj.healthmanagement.entity.Params;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Repository
public interface AdminDao extends Mapper<Admin> {

//     1. 基于注解的方式
//    @Select("select * from admin")
//    List<Admin> findAll();
//    模糊查询
    List<Admin> findBySearch(@Param("params") Params params);
//    校验用户名
    @Select("select * from admin where name = #{name} limit 1")
    Admin findByName(@Param("name") String name);

//    登陆 校验用户名和密码
    @Select("select * from admin where name = #{name} and password = #{password} limit 1")
    Admin findByNameAndPassword(@Param("name") String name, @Param("password") String password);

//    校验密码
//    @Select("select * from admin where password = #{password} limit 1")
//    Admin findByPassword(@Param("password") String password);
}
