<template>
  <!--只能由一个根div，若想再用div，只能嵌套在div里边使用-->
  <div>
    <div style="display: flex">
      <div style="flex: 1;height: 350px" >
        <div style="font-size: 30px; color: red;margin-bottom: 30px">健康状况分析与可视化</div>
        <div style="font-size: 18px;margin-bottom: 30px">通过饼状图、柱形图、折线图来对人们的健康状况进行统计</div>
        <div style="font-size: 18px">可视化图形可以直观地看出人们的健康状况</div>
      </div>
      <div style="flex: 1">
        <div id="bie" style="height: 350px"></div>
      </div>
    </div>
    <div style="display: flex">
      <div style="flex: 1">
        <div id="bar" style="height: 350px"></div>
      </div>
      <div style="flex: 1">
        <div id="line" style="height: 350px"></div>
      </div>
    </div>

    <!--
      el-button：官网文档操作按钮https://element.eleme.cn/#/zh-CN/component/button
    -->
  </div>
</template>

<script>
  import request from "@/utils/request";
  import * as echarts from 'echarts';
  export default {
    name: 'HealthanalysisView',

    data() {
      return {
        data: []
      };
    },
    mounted() {
      this.initEcharts();
    },
    methods: {
      initEcharts() {
        request.get("/reserve/echarts/bie").then(res => {
          if (res.code === '0') {
            // 开始去渲染饼图数据
            this.initBie(res.data)
          } else {
            this.$message.error(res.msg)
          }
        })
        request.get("/reserve/echarts/bar").then(res => {
          if (res.code === '0') {
            let map = res.data;
            // 开始去渲染柱状图数据
            this.initBar(map.xAxis, map.yAxis)
            // 开始去渲染折线图数据
            this.initLine(map.xAxis, map.yAxis)
          } else {
            this.$message.error(res.msg)
          }
        })
      },
      initBie(data){
        let chartDom = document.getElementById('bie');
        let myChart = echarts.init(chartDom);
        let option;
        option = {
          title: {
            text: '健康统计（饼图）',
            subtext: '统计维度：健康程度',
            left: 'center'
          },
          tooltip: {
            trigger: 'item'
          },
          legend: {
            orient: 'vertical',
            left: 'left'
          },
          series: [
            {
              name: '健康状况分布',
              type: 'pie',
              radius: '50%',
              data: data,
              emphasis: {
                itemStyle: {
                  shadowBlur: 10,
                  shadowOffsetX: 0,
                  shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
              }
            }
          ]
        };
        option && myChart.setOption(option);
      },
      initBar(xAxis, yAxis) {
        let chartDom = document.getElementById('bar');
        let myChart = echarts.init(chartDom);
        let option;

        option = {
          title: {
            text: '健康统计(柱状图)',
            subtext: '统计维度：健康程度',
            left: 'center'
          },
          xAxis: {
            type: 'category',
            data: xAxis
          },
          yAxis: {
            type: 'value'
          },
          series: [
            {
              data: yAxis,
              type: 'bar',
              showBackground: true,
              backgroundStyle: {
                color: 'rgba(180, 180, 180, 0.2)'
              }
            }
          ]
        };
        option && myChart.setOption(option);
      },
      initLine(xAxis, yAxis) {
        let chartDom = document.getElementById('line');
        let myChart = echarts.init(chartDom);
        let option;

        option = {
          title: {
            text: '健康统计（折线图）',
            subtext: '统计维度：健康程度',
            left: 'center'
          },
          xAxis: {
            type: 'category',
            data: xAxis
          },
          yAxis: {
            type: 'value'
          },
          series: [
            {
              data: yAxis,
              type: 'line'
            }
          ]
        };
        option && myChart.setOption(option);
      }
    }
  }
</script>

