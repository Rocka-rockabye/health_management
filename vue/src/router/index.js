import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'
import AdminView from '../views/AdminView.vue'
import LoginView from '../views/LoginView.vue'
import Layout from '../views/Layout.vue'
import RegisterView from "../views/RegisterView";
import SetmealView from "../views/SetmealView";
import CheckitemView from "../views/CheckitemView";
import CheckgroupView from "../views/CheckgroupView";
import TypeView from "../views/TypeView";
import AuditView from "../views/AuditView";
import ReserverView from "../views/ReserverView";
import LogView from "../views/LogView";
import NoticeView from "../views/NoticeView";
import HealthanalysisView from "../views/HealthanalysisView";

Vue.use(VueRouter)

const routes = [
  {
    path: '/login',
    name: 'Login',
    component: LoginView
  },
  {
    path: '/register',
    name: 'Register',
    component: RegisterView
  },
  {
    path: '/',
    name: 'Layout',
    component: Layout,
    children: [ // 子路由
      {
        path: 'home',
        name: 'home',
        component: HomeView
      },
      {
        path: 'admin',
        name: 'admin',
        component: AdminView
      },
      {
        path: 'setmeal',
        name: 'setmeal',
        component: SetmealView
      },
      {
        path: 'checkitem',
        name: 'checkitem',
        component: CheckitemView
      },
      {
        path: 'checkgroup',
        name: 'checkgroup',
        component: CheckgroupView
      },
      {
        path: 'type',
        name: 'type',
        component: TypeView
      },
      {
        path: 'audit',
        name: 'audit',
        component: AuditView
      },
      {
        path: 'reserve',
        name: 'reserve',
        component: ReserverView
      },
      {
        path: 'log',
        name: 'log',
        component: LogView
      },
      {
        path: 'notice',
        name: 'notice',
        component: NoticeView
      },
      {
        path: 'healthanalysis',
        name: 'healthanalysis',
        component: HealthanalysisView
      },
    ]
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

// 路由守卫
router.beforeEach((to ,from, next) => {
  // // 判断是否前往login页面
  // if (to.path ==='/login') {
  //   // 如果是，直接放行
  //   next();
  // }
  // // 验证用户信息，如果用户信息为空且不是前往login页面的，跳转到login页面，
  // const user = localStorage.getItem("user");
  // if (!user && to.path !== '/login' && to.path !== '/register') {
  //   return next('/login');
  // }
  // // 反之满足条件，直接放行
  // next();
  //
  // // 判断是否来自注册链接的点击
  // const isFromRegisterLink = from.path === '/register';
  // if (isFromRegisterLink) {
  //   // 执行跳转到注册页面的操作
  //   next();
  // }
  // // 判断是否来自登录链接的点击
  // const isFromLoginLink = from.path === '/login';
  // if (isFromLoginLink) {
  //   // 执行跳转到登录页面的操作
  //   next();
  // }
  // 验证用户信息，如果用户信息为空且不是前往login页面的，跳转到login页面
  const user = localStorage.getItem("user");
  if (!user && to.path !== '/login' && to.path !== '/register') {
    return next('/login');
  }
  // 反之满足条件，直接放行
  next();
})

export default router
