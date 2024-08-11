package com.zhengjj.healthmanagement.entity;

import cn.hutool.core.annotation.Alias;

import javax.persistence.*;

@Table(name = "type")
public class Type {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Alias("分类名称")
    @Column(name = "name")
    private String name;

    @Alias("分类描述")
    @Column(name = "description")
    private String description;

    @Alias("套餐价格")
    @Column(name = "typeprice")
    private String typeprice;

    @Transient
    private String setmealPrice;

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSetmealPrice() {
        return setmealPrice;
    }

    public void setSetmealPrice(String setmealPrice) {
        this.setmealPrice = setmealPrice;
    }

    public String getTypeprice() {
        return typeprice;
    }

    public void setTypeprice(String typeprice) {
        this.typeprice = typeprice;
    }
}