package com.zhengjj.healthmanagement;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import tk.mybatis.spring.annotation.MapperScan;

@EnableWebMvc
@SpringBootApplication
@MapperScan("com.zhengjj.healthmanagement.dao")
public class HealthManagementApplication {

    public static void main(String[] args) {
        SpringApplication.run(HealthManagementApplication.class, args);
    }

}
