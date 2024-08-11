package com.zhengjj.healthmanagement.entity;


import javax.persistence.*;

@Table(name = "log")
public class Log {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
//    数据库字段名字
    @Column(name = "name")
    private String name;
    @Column(name = "username")
    private String username;
    @Column(name = "ip")
    private String ip;
    @Column(name = "time")
    private String time;

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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Log(Integer id, String name, String time, String username, String ip) {
        this.id = id;
        this.name = name;
        this.time = time;
        this.username = username;
        this.ip = ip;
    }
}
