package com.zhengjj.healthmanagement.dao;

import com.zhengjj.healthmanagement.entity.Checkitem;
import com.zhengjj.healthmanagement.entity.Params;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;


@Repository
public interface CheckitemDao extends Mapper<Checkitem> {
    List<Checkitem> findBySearch(@Param("params") Params params);
}
