package com.zhengjj.healthmanagement.entity;

import cn.hutool.core.annotation.Alias;

import javax.persistence.*;

@Table(name = "setmeal")
public class Setmeal {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Alias("套餐名称")
    @Column(name = "name")
    private String name;
    @Alias("套餐编码")
    @Column(name = "code")
    private String code;
    @Alias("助记码")
    @Column(name = "helpCode")
    private String helpCode;
    @Alias("适用性别")
    @Column(name = "sex")
    private String sex;
    @Alias("适用年龄/周岁")
    @Column(name = "age")
    private String age;
    @Alias("套餐价格/元")
    @Column(name = "price")
    private String price;
    @Alias("说明")
    @Column(name = "remark")
    private String remark;
    @Alias("注意事项")
    @Column(name = "attention")
    private String attention;
    @Alias("套餐封面")
    @Column(name = "img")
    private String img;
    @Alias("套餐类型")
    @Column(name = "typeId")
    private  Integer typeId;
    @Transient
    private String typeName;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

}