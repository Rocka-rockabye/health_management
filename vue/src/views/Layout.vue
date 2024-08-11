<template>
    <div id="app">
        <!--整体容器-->
        <el-container>
            <!--头部设置-->
            <el-header style="background-color: #6cb0b9">
                <img src="@/assets/health_logo.png" alt="" style="width: 40px; position: relative; top: 10px;">
                <span style="font-size: 20px; margin-left: 15px; color: white">基于SpringBoot+Vue的在线健康管理平台的设计与实现</span>
                <el-dropdown style="float: right; height: 60px; line-height: 60px">
                    <span class="el-dropdown-link" style="color: white; font-size: 16px">欢迎，{{ user.name }}<i class="el-icon-arrow-down el-icon--right"></i></span>
                    <el-dropdown-menu slot="dropdown">
                        <el-dropdown-item>
                            <div @click="logout">退出登录</div>
                        </el-dropdown-item>
                    </el-dropdown-menu>
                </el-dropdown>
            </el-header>
        </el-container>
        <el-container>
            <!--左边栏设置-->
            <el-aside style="overflow: hidden; min-height: 100vh; background-color: #545c64; width: 250px">
                <!--
                  :default-active="$route.path" router是路由设置，激活路由，鼠标点击相对应的导航栏的时候，就会去寻找index里边的路由
                  如index=“/home”鼠标点击该导航栏的时候就会跳转到HomeView.vue页面，因为在router下面的index.js设置了/home目录就是HomeView.vue页面
                  如管理员信息导航栏的index是/admin,鼠标点击管理员信息的时候就跳转到AdminView.vue页面，因为在router下面的index.js设置了/admin目录就是AdminView.vue页面
                -->
                <el-menu :default-active="$route.path" router background-color="#545c64" text-color="#fff" active-text-color="#ffd04b">
                    <el-menu-item index="/home">
                        <i class="el-icon-s-home"></i>
                        <span slot="title">平台首页</span>
                    </el-menu-item>
                    <!--设置非admin用户不能查看用户信息管理导航-->
                    <el-submenu index="2">
                        <template slot="title">
                            <i class="el-icon-s-custom"></i>
                            <span>用户管理</span>
                        </template>
                        <el-menu-item-group>
                            <el-menu-item index="/admin" v-if="user.role === 'ROLE_ADMIN'">用户信息</el-menu-item>
                            <el-menu-item index="/audit">信息审核</el-menu-item>
                        </el-menu-item-group>
                    </el-submenu>
                    <!--<el-menu-item index="/audit">-->
                        <!--<i class="el-icon-question"></i>-->
                        <!--<span slot="title">信息审核</span>-->
                    <!--</el-menu-item>-->
                    <el-submenu index="3">
                        <template slot="title">
                            <i class="el-icon-s-data"></i>
                            <span>健康管理</span>
                        </template>
                        <el-menu-item-group>
                            <el-menu-item index="/checkitem">检查项信息</el-menu-item>
                            <el-menu-item index="/checkgroup">检查组信息</el-menu-item>
                            <el-menu-item index="/setmeal">套餐信息</el-menu-item>
                            <el-menu-item index="/type">套餐预定</el-menu-item>
                            <el-menu-item index="/reserve">预定结果</el-menu-item>
                        </el-menu-item-group>
                    </el-submenu>
                    <el-menu-item index="/healthanalysis">
                        <i class="el-icon-data-line"></i>
                        <span slot="title">健康分析</span>
                    </el-menu-item>
                    <el-menu-item index="/notice" v-if="user.role === 'ROLE_ADMIN'">
                        <i class="el-icon-message"></i>
                        <span slot="title">平台公告</span>
                    </el-menu-item>
                    <el-menu-item index="/log">
                        <i class="el-icon-info"></i>
                        <span slot="title">日志信息</span>
                    </el-menu-item>
                </el-menu>
            </el-aside>
            <el-main>
                <!--路由展示的内容在main部分-->
                <router-view/>
            </el-main>
        </el-container>
    </div>
</template>

<style>
    /*去除边框*/
    .el-menu{
        border-right: none !important;
    }

</style>

<script>
    export default {
        name: "Layout",
        data () {
            return {
                user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")) : {},
                cancelButtonText:'',
                confirmButtonText:'',
            }
        },
        methods: {
            logout() {
                this.$confirm("即将退出登录，是否继续？",{
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning',
                }).then(()=>{
                    localStorage.removeItem("user");
                    this.$router.push("/login");
                    this.$message.success("退出成功！")
                }).catch(()=>{
                    // this.$message.warning("已取消")
                })

            }
        }
    }
</script>