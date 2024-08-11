package com.zhengjj.healthmanagement.entity;

import cn.hutool.core.annotation.Alias;

import javax.persistence.*;

@Table(name = "checkitem")
public class Checkitem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Alias("检查项编码")
    @Column(name = "code")
    private String code;
    @Alias("检查项名称")
    @Column(name = "name")
    private String name;
    @Alias("适用性别")
    @Column(name = "sex")
    private String sex;
    @Alias("适用年龄/周岁")
    @Column(name = "age")
    private String age;
    @Alias("检查价格/元")
    @Column(name = "price")
    private String price;
    @Alias("检查类型")
    @Column(name = "type")
    private String type;
    @Alias("注意事项")
    @Column(name = "attention")
    private String attention;
    @Alias("检查项说明")
    @Column(name = "remark")
    private String remark;

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

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAttention() {
        return attention;
    }

    public void setAttention(String attention) {
        this.attention = attention;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}