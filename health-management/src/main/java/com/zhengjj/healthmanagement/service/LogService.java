package com.zhengjj.healthmanagement.service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhengjj.healthmanagement.dao.LogDao;
import com.zhengjj.healthmanagement.entity.Log;
import com.zhengjj.healthmanagement.entity.Params;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LogService {

    @Resource
    private LogDao logDao;

    public void add(Log type) {
        logDao.insertSelective(type);
    }
    public PageInfo<Log> findBySearch(Params params) {
        // 开启分页查询
        PageHelper.startPage(params.getPageNum(), params.getPageSize());
        // 接下来的查询会自动按照当前开启的分页设置来查询
        List<Log> list = logDao.findBySearch(params);
        return PageInfo.of(list);
    }
//    删除
    public void delete(Integer id) {
        logDao.deleteByPrimaryKey(id);
    }


}
