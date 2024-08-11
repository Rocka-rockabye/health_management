<template>
  <div>
    <!--搜索框-->
    <div style="margin-top: 20px">
      <el-input v-model="params.name" style="width: 200px" placeholder="请输入姓名"></el-input>
      <el-input v-model="params.phone" style="width: 200px; margin-left: 8px" placeholder="请输入电话号码"></el-input>
      <el-button type="primary" style="margin-left: 8px" @click="findBySearch()">查询</el-button>
      <el-button type="warning" style="margin-left: 8px" @click="reset()">清空</el-button>
      <el-button type="primary" style="margin-left: 8px" @click="add()">新增</el-button>
    </div>
    <!--表格内容-->
    <div>
      <el-table :data="tableData" style="width: 100%; margin: 15px 0px">
        <el-table-column prop="name" label="姓名"></el-table-column>
        <el-table-column prop="sex" label="性别"></el-table-column>
        <el-table-column prop="age" label="年龄"></el-table-column>
        <el-table-column prop="phone" label="电话"></el-table-column>
        <el-table-column prop="role" label="角色"></el-table-column>
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button type="primary" @click="edit(scope.row)" size="small">编辑</el-button>
            <el-popconfirm title="确定删除吗？" @confirm="del(scope.row.id)">
              <el-button slot="reference" type="danger" style="margin-left: 5px" size="small">删除</el-button>
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
    <!--编辑-->
    <div @keyup.enter="submit()">
      <el-dialog title="请填写信息" :visible.sync="dialogFormVisible" width="30%">
        <el-form :model="form">
          <el-form-item label="姓名" label-width="20%">
            <el-input v-model="form.name" autocomplete="off" style="width: 90%" placeholder="请输入姓名"></el-input>
          </el-form-item>
          <el-form-item label="性别" label-width="20%">
            <el-radio v-model="form.sex" label="M">M</el-radio>
            <el-radio v-model="form.sex" label="F">F</el-radio>
          </el-form-item>
          <el-form-item label="年龄" label-width="20%">
            <el-input v-model="form.age" autocomplete="off" style="width: 90%" placeholder="请输入两位数以内的年龄"></el-input>
          </el-form-item>
          <el-form-item label="电话" label-width="20%">
            <el-input v-model="form.phone" autocomplete="off" style="width: 90%"></el-input>
          </el-form-item>
          <el-form-item label="身份" label-width="20%">
            <el-select v-model="form.role" placeholder="请选择您的身份" style="width: 90%">
              <el-option label="教师" value="ROLE_TEACHER"></el-option>
              <el-option label="学生" value="ROLE_STUDENT"></el-option>
            </el-select>
          </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button @click="cancel()">重置 / 取消</el-button>
          <el-button type="primary" @click="submit()">确 定</el-button>
        </div>
      </el-dialog>
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
          name: '',
          phone:'',
          pageNum: 1,
          pageSize: 5
        },
        tableData:[],
        total: 0,
        dialogFormVisible: false,
        form: {}
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
        request.get("/admin/search", {
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
          name: '',
          phone: '',
          pageNum: 1,
          pageSize: 5,

        }
        this.findBySearch();
      },
      cancel(){
        if(this.form.name||this.form.phone||this.form.sex||this.form.age||this.form.role){
          this.form = {};
          this.$message.warning("信息已重置！")
        }else {
          this.dialogFormVisible = false;
        }

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
      // 新增
      add() {
        this.form = {};
        this.dialogFormVisible = true;
      },
      // 编辑
      edit(obj) {
        this.form = obj;
        this.dialogFormVisible = true;
      },
      // 提交
      submit() {
        request.post("/admin", this.form).then(res => {
          if (res.code === '0') {
            this.$message({
              message: '操作成功',
              type: 'success'
            });
            this.dialogFormVisible = false;
            this.findBySearch();
          } else {
            this.$message({
              message: res.msg,
              type: 'error'
            });
          }
        })
      },
      // 删除
      del(id) {
        request.delete("/admin/" + id).then(res => {
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

