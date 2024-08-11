package com.zhengjj.healthmanagement.controller;

import com.github.pagehelper.PageInfo;
import com.wf.captcha.utils.CaptchaUtil;
import com.zhengjj.healthmanagement.common.AutoLog;
import com.zhengjj.healthmanagement.common.CaptureConfig;
import com.zhengjj.healthmanagement.common.Result;
import com.zhengjj.healthmanagement.entity.Admin;
import com.zhengjj.healthmanagement.entity.Params;
import com.zhengjj.healthmanagement.exception.CustomException;
import com.zhengjj.healthmanagement.service.AdminService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

//@CrossOrigin
//@RestController
//
////请求地址:localhost:8080/user/start
////user相当于一把钥匙，如果只是访问localhost：8080是拿不到数据的
//
//@RequestMapping("/user")
//public class UserController {
//    /**
//     * controller里的一个方法，它其实就是我们平常说的web项目的一个接口的入口
//     * 可以在这个方法上再加上一个url
//     * 也可以指定请求方式：GET POST PUT DELETE
//     * @return
//     */
////    @GetMapping
////    get请求一定要有，不然访问不了，后面可以不跟地址
//
//    @GetMapping("/start")
////    这里的/start也是相当于一把钥匙，不加上这个地址那就拿不到数据
//    public String start() {
//        return "这是你的第一个Springboot项目工程，已经启动";
//    }
//}

@RestController
@RequestMapping("/admin")
public class AdminController {

    private static final Logger log = LoggerFactory.getLogger(AdminController.class);

    @Resource
    private AdminService adminService;

    @GetMapping
    public Result findAll() {
        List<Admin> list = adminService.findAll();
        return Result.success(list);
    }
//    分页查询
    @GetMapping("/search")
    public Result findBySearch(Params params) {
        log.info("拦截器已放行，正式调用接口内部");
        PageInfo<Admin> info = adminService.findBySearch(params);
        return Result.success(info);
    }
//    新增
    @PostMapping
    @AutoLog("更新用户信息")
    public Result save(@RequestBody Admin admin) {
//        新增前先判断是否存在同名的admin
        if (admin.getId() == null) {
            adminService.add(admin);
        }
        else if (admin.getAge() != null && admin.getAge().length()>2) {
                throw new CustomException("年龄不能超过2位数！");
        }else adminService.update(admin);
        return Result.success();
    }
//    删除
    @DeleteMapping("/{id}")
    @AutoLog("删除用户信息")
    public Result delete(@PathVariable Integer id) {
        adminService.delete(id);
        return Result.success();
    }
//    登录
    @PostMapping("/login")
    @AutoLog("登录该平台")
    public Result login(@RequestBody Admin admin, @RequestParam String key, HttpServletRequest request) {
        Admin loginUser = adminService.login(admin);
        // 判断验证码是否为空
        if (admin.getVerCode() == null || admin.getVerCode().isEmpty()){
            CaptchaUtil.clear(request);
            return Result.error("验证码不能为空，请输入验证码！");
        }
        // 判断验证码对不对
        else if (!admin.getVerCode().toLowerCase().equals(CaptureConfig.CAPTURE_MAP.get(key))) {
            // 如果不相等，说明验证不通过
            CaptchaUtil.clear(request);
            return Result.error("验证码不正确，请重新输入！");
        }
        CaptureConfig.CAPTURE_MAP.remove(key);
        return Result.success(loginUser);
    }
//    注册
    @PostMapping("/register")
    public Result register(@RequestBody Admin admin) {
        adminService.add(admin);
        return Result.success();
    }
}