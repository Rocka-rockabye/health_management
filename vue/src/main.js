import Vue from 'vue'
import App from './App.vue'
import router from './router'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import '@/assets/global.css';
import request from 'axios'
Vue.config.productionTip = false
Vue.prototype.$axios = request
request.defaults.baseURL = 'http://123.57.210.242:8080/api'        //关键代码
Vue.config.productionTip = false
Vue.use(ElementUI);
Vue.use(ElementUI, { size: "small" });
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
