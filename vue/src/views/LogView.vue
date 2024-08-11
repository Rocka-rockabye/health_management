<template>
  <div>
    <!--搜索框-->
    <div style="margin-top: 20px">
      <el-input v-model="params.name" style="width: 200px" placeholder="请输入操作内容"></el-input>
      <el-input v-model="params.username" style="width: 200px; margin-left: 8px" placeholder="请输入操作人"></el-input>
      <el-button type="primary" style="margin-left: 8px" @click="findBySearch()">查询</el-button>
      <el-button type="warning" style="margin-left: 8px" @click="reset()">清空</el-button>
    </div>
    <!--表格内容-->
    <div>
      <el-table :data="tableData" style="width: 100%; margin: 15px 0px">
        <el-table-column prop="name" label="操作内容"></el-table-column>
        <el-table-column prop="username" label="操作人"></el-table-column>
        <el-table-column prop="ip" label="操作人ip"></el-table-column>
        <el-table-column prop="time" label="操作时间"></el-table-column>
        <el-table-column label="操作" v-if="user.role === 'ROLE_ADMIN' ">
          <template slot-scope="scope">
            <el-popconfirm title="确定删除吗？" @confirm="del(scope.row.id)">
              <el-button slot="reference" type="danger" style="margin: 5px 5px" size="small">删除</el-button>
            </el-popconfirm>
          </template>
        </el-table-column>
      </el-table>
    </div>
    <!--分页-->
    <div class="block" style="margin-top: 50px;text-align: center">
      <el-pagination
              @size-change="handleSizeChange"
              @current-change="handleCurrentChange"
              :current-page="params.pageNum"
              :page-sizes="[5,10,15,20]"
              :page-size="params.pageSize"
              layout="total, sizes, prev, pager, next"
              :total="total">
      </el-pagination>
    </div>
  </div>
</template>

<!--表格内容js-->
<script>
  import request from "@/utils/request";
  export default {
    data() {
      return{
        // data里定义一个params,用于模糊查询
        params: {
          username:'',
          name: '',
          pageNum: 1,
          pageSize: 5
        },
        tableData:[],
        total: 0,
        dialogFormVisible: false,
        form: {},
        user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")) : {},
      }
    },
    // 页面加载的时候做一些事情，在create里面
    created() {
      this.findBySearch();
    },
    // 定义一些页面上控件触发的事件调用的方法
    methods: {
      // 模糊查询：methods里定义一个findBySearch
      findBySearch() {
        request.get("/log/search", {
          params: this.params
        }).then(res => {
          if (res.code === '0') {
            this.tableData = res.data.list;
            this.total = res.data.total;
          } else {

             }
        })
      },
      // 清空
      reset() {
        this.params = {
          username: '',
          name: '',
          pageNum: 1,
          pageSize: 5,
        }
        this.findBySearch();
      },
      // 分页查询
      handleSizeChange(pageSize) {
        this.params.pageSize = pageSize;
        this.findBySearch();
      },
      handleCurrentChange(pageNum) {
        this.params.pageNum = pageNum;
        this.findBySearch();
      },
      // 删除
      del(id) {
        request.delete("/log/" + id).then(res => {
          if (res.code === '0') {
            this.$message({
              message: '删除成功',
              type: 'success'
            });
            this.findBySearch();
          } else {
            this.$message({
              message: res.msg,
              type: 'error'
            });
          }
        })
      },
    }
  };
</script>

