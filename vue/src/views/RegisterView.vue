<template>
    <div class="register-container">
        <div style="width: 400px; height: 425px; margin: 150px auto; background-color:rgba(255,255,255,0.8); border-radius: 10px">
            <div style="width: 100%; height: 100px; font-size: 30px; line-height: 100px; text-align: center; color: #806e5f;padding-top: 15px">还有没账号？请先注册</div>
            <div style="margin-top: 25px; text-align: center; height: 320px;" @keyup.enter="register()">
                <el-form :model="admin">
                    <el-form-item>
                        <el-input v-model="admin.name" prefix-icon="el-icon-user" style="width: 80%" placeholder="请输入用户名"></el-input>
                    </el-form-item>
                    <el-form-item>
                        <el-input v-model="admin.password" prefix-icon="el-icon-lock" style="width: 80%" placeholder="请输入密码,若不填写,初始密码为123456" show-password=""></el-input>
                    </el-form-item>
                    <el-form-item>
                        <el-select v-model="admin.role" placeholder="请选择您的身份" style="width: 80%">
                            <el-option label="教师" value="ROLE_TEACHER"></el-option>
                            <el-option label="学生" value="ROLE_STUDENT"></el-option>
                        </el-select>
                    </el-form-item>
                    <el-form-item>
                        <el-button style="width: 80%; margin-top: 10px" type="primary" @click="register()">立即注册</el-button>
                    </el-form-item>
                    <div id="register-prompt" style="width: 100%; height: 30px; font-size: 16px; line-height: 30px; text-align: center; color: black; margin: -10px 0;">
                        已有账号? <a href="/login" style="text-decoration: none" @click="goToLogin()">去登录</a>
                    </div>
                </el-form>

            </div>
        </div>
    </div>
</template>

<script>

    import request from "@/utils/request";

    export default {
        name: "Register",
        data() {
            return {
                admin: {}
            }
        },
        // 页面加载的时候，做一些事情，在created里面
        created() {
        },
        // 定义一些页面上控件出发的事件调用的方法
        methods: {
            register() {
                request.post("/admin/register", this.admin).then(res => {
                    if (res.code === '0') {
                        this.$message({
                            message: '注册成功',
                            type: 'success'
                        });
                        // 注册成功后跳转到登录页面
                        this.$router.push("/login");
                    } else {
                        this.$message({
                            message: res.msg,
                            type: 'error'
                        });
                    }
                })
            },
            goToLogin() {
                // 跳转到登录页面
                this.$router.push('/login');
            },
        }
    }
</script>

<style scoped>
    .register-container {
        height: 100vh;
        overflow: hidden;
        background-image: url("@/assets/健康背景.jpg");
        background-size: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
    }
</style>
