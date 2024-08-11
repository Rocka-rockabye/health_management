package com.zhengjj.healthmanagement.common;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import com.zhengjj.healthmanagement.entity.Admin;
import com.zhengjj.healthmanagement.entity.Log;
import com.zhengjj.healthmanagement.service.LogService;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * 处理切面的“监控”
 */
@Component
@Aspect
public class LogAspect {
    @Resource
    private LogService logService;
    @Around("@annotation(autoLog)")
    public Object doAround(ProceedingJoinPoint joinPoint, AutoLog autoLog) throws Throwable {
        // 操作内容，在注解里已经定义了value()，然后再需要切入的接口上面去写上对应的操作内容即可
        String name = autoLog.value();
        // 操作时间（当前时间）
        String time = DateUtil.now();
        // 操作人
        String username = "";
        Admin user = JwtTokenUtils.getCurrentUser();
        if (ObjectUtil.isNotNull(user)) {
            username = user.getName();
        }
        // 操作人IP
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String ip = request.getRemoteAddr();
        // 执行具体的接口
        Result result = (Result) joinPoint.proceed();
        //获取登陆信息
        Object data = result.getData();
        if (data instanceof Admin) {
            Admin admin = (Admin) data;
            username = admin.getName();
        }
        // 再去往日志表里写一条日志记录
        Log log = new Log(null, name, time, username, ip);
        logService.add(log);
        return result;
    }
}
