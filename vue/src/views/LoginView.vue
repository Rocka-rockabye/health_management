<template>
    <div class="login-container">
        <div style="width: 400px; height: 420px; margin: 150px auto; background-color:rgba(209,234,255,0.9); border-radius: 10px;">
            <div style="width: 100%; height: 50px; font-size: 30px; line-height: 50px; text-align: center; color: #806e5f; padding-top: 10px;">欢迎来到健康管理平台</div>
            <div style="width: 100%; height: 50px; font-size: 30px; line-height: 50px; text-align: center; color: #806e5f; padding-top: 5px;">请登录</div>
            <div style="margin-top: 25px; text-align: center; height: 320px;" @keyup.enter="login()">
                <el-form :model="admin">
                    <el-form-item>
                        <el-input v-model="admin.name" prefix-icon="el-icon-user" style="width: 80%" placeholder="请输入用户名"></el-input>
                    </el-form-item>
                    <el-form-item>
                        <el-input v-model="admin.password" prefix-icon="el-icon-lock" style="width: 80%" placeholder="请输入密码" show-password=""></el-input>
                    </el-form-item>
                    <el-form-item>
                        <div style="display: flex; justify-content: center">
                            <el-input v-model="admin.verCode" prefix-icon="el-icon-key" style="width: 42%; margin-right: 10px" placeholder="请输入验证码"></el-input>
                            <img :src="captchaUrl" @click="clickImg()" width="140px" height="33px" style="margin-top: 5px;"/>
                        </div>
                    </el-form-item>
                    <el-form-item>
                        <el-button style="width: 80%; margin-top: 10px" type="primary" @click="login()">立即登录</el-button>
                    </el-form-item>
                </el-form>
                <!--<div style="width: 100%; height: 30px; font-size: 16px; line-height: 30px; text-align: right; color: black; margin: -10px -15px;" @click="toregister()">还没有账号？去注册</div>-->
                <div id="register-prompt" style="width: 100%; height: 30px; font-size: 16px; line-height: 30px; text-align: center; color: black;margin: -10px 0">
                    未有账号？<a href="/register" style="text-decoration: none" @click="goToRegister()">去注册</a>
                </div>
            </div>
        </div>
    </div>
</template>
<style>
    #register-prompt a:hover{
        color: red;
    }
</style>


<script>

    import request from "@/utils/request";

    export default {
        name: "Login",
        data() {
            return {
                admin: {},
                key: '',
                captchaUrl: '',
            }
        },
        // 页面加载的时候，做一些事情，在created里面
        created() {
        },
        mounted() {
            this.key = Math.random();
            this.captchaUrl = 'http://jkgl.free.idcfengye.com/api/captcha?key=' + this.key
        },
        // 定义一些页面上控件出发的事件调用的方法
        methods: {
            login() {
                request.post("/admin/login?key="+this.key, this.admin).then(res => {
                    if (res.code === '0') {
                        this.$message({
                            message: '登录成功',
                            type: 'success'
                        });
                        localStorage.setItem("user", JSON.stringify(res.data));
                        // 登录成功将跳转到/目录下
                        this.$router.push("/home");
                    } else {
                        this.$message({
                            message: res.msg,
                            type: 'error'
                        });
                        // this.admin.verCode = '';
                        this.key = Math.random();
                        this.captchaUrl = 'http://jkgl.free.idcfengye.com/api/captcha?key=' + this.key;
                    }
                })
            },
            goToRegister() {
                // 跳转到注册页面
                this.$router.push('/register');
            },
            // 验证码
            clickImg() {
                this.key = Math.random();
                this.captchaUrl = 'http://jkgl.free.idcfengye.com/api/captcha?key=' + this.key;
            },
        },
    }
</script>

<style scoped>
    .login-container {
        height: 100vh;
        overflow: hidden;
        background-image: url("@/assets/login.png");
        background-size: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
    }
</style>