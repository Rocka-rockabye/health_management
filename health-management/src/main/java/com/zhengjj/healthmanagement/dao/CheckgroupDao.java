package com.zhengjj.healthmanagement.dao;

import com.zhengjj.healthmanagement.entity.Checkgroup;
import com.zhengjj.healthmanagement.entity.Params;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;


@Repository
public interface CheckgroupDao extends Mapper<Checkgroup> {
    List<Checkgroup> findBySearch(@Param("params") Params params);
}
