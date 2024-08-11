package com.zhengjj.healthmanagement.entity;

import cn.hutool.core.annotation.Alias;

import javax.persistence.*;

@Table(name = "reserve")
public class Reserve {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Alias("套餐ID")
    @Column(name = "setmealId")
    private String setmealId;

    @Alias("预定人ID")
    @Column(name = "userId")
    private String userId;

    @Alias("预定时间")
    @Column(name = "time")
    private String time;

    @Alias("最终检查结果")
    @Column(name = "checkresult")
    private String checkresult;

    @Transient
    private String setmealName;

    @Transient
    private String userName;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSetmealId() {
        return setmealId;
    }

    public void setSetmealId(String setmealId) {
        this.setmealId = setmealId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getSetmealName() {
        return setmealName;
    }

    public void setSetmealName(String setmealName) {
        this.setmealName = setmealName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCheckresult() {
        return checkresult;
    }

    public void setCheckresult(String checkresult) {
        this.checkresult = checkresult;
    }
}