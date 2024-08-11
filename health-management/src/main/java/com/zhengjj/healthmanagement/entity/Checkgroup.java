package com.zhengjj.healthmanagement.entity;

import cn.hutool.core.annotation.Alias;

import javax.persistence.*;

@Table(name = "checkgroup")
public class Checkgroup {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Alias("检查组编码")
    @Column(name = "code")
    private String code;
    @Alias("检查组名称")
    @Column(name = "name")
    private String name;
    @Alias("助记码")
    @Column(name = "helpCode")
    private String helpCode;
    @Alias("适用性别")
    @Column(name = "sex")
    private String sex;
    @Alias("检查组说明")
    @Column(name = "remark")
    private String remark;
    @Alias("注意事项")
    @Column(name = "attention")
    private String attention;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHelpCode() {
        return helpCode;
    }

    public void setHelpCode(String helpCode) {
        this.helpCode = helpCode;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getAttention() {
        return attention;
    }

    public void setAttention(String attention) {
        this.attention = attention;
    }
}