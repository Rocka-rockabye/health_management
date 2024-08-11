<template>
  <!--只能由一个根div，若想再用div，只能嵌套在div里边使用-->
  <div>
    <div style="width: 50%" >
      <div style="margin-bottom: 15px; font-weight: bold; font-size: 25px">平台公告</div>
      <el-collapse v-model="activeName" accordion>
        <el-collapse-item v-for="item in data" :title="item.name" :name="item.id">
          <div style="font-size: 15px">{{item.content}}</div>
        </el-collapse-item>
      </el-collapse>
    </div>
    <div style="font-size: 25px; color: red;margin-bottom: 20px">经过疫情后，人们现在开始慢慢重视自身的健康状况</div>
    <div style="font-size: 18px;margin-bottom: 20px">本网站旨在通过数据分析人们的健康状况</div>
    <div style="font-size: 18px;margin-bottom: 20px">平台正在不断完善，欢迎您提供宝贵的完善建议</div>
    <!--
      el-button：官网文档操作按钮https://element.eleme.cn/#/zh-CN/component/button
    -->
    <!--<el-button type="primary">按钮</el-button>-->
  </div>
</template>

<script>
  import request from "@/utils/request";

  export default {
    name: 'HomeView',

    data() {
      return {
        activeName: '1',
        data: []
      };
    },
    mounted() {
      this.findNotice();
    },
    methods: {
      findNotice() {
        request.get("/notice").then(res => {
          if (res.code === '0') {
            this.data = res.data;
            this.activeName = res.data[0].id;
          } else {
            this.$message.error(res.msg)
          }
        })
      }
    }
  }
</script>

<style>
  .el-collapse-item__header{
    font-size: 18px !important;
  }
</style>
