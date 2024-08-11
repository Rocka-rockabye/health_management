<template>
  <div>
    <!--搜索框-->
    <div style="margin-top: 20px">
      <el-input v-model="params.studentId" style="width: 200px" placeholder="请输入学号"></el-input>
      <el-button type="primary" style="margin-left: 8px" @click="findBySearch()">查询</el-button>
      <el-button type="warning" style="margin-left: 8px" @click="reset()">清空</el-button>
      <el-button type="primary" style="margin-left: 8px" @click="add()" v-if="user.role ==='ROLE_STUDENT'">新增</el-button>
    </div>
    <!--表格内容-->
    <div>
      <el-table :data="tableData" style="width: 100%; margin: 15px 0px">
        <el-table-column prop="userName" label="学生姓名"></el-table-column>
        <el-table-column prop="studentId" label="学号"></el-table-column>
        <el-table-column prop="majorClass" label="专业班级"></el-table-column>
        <el-table-column prop="time" label="提交日期"></el-table-column>
        <el-table-column prop="status" label="审核状态"></el-table-column>
        <el-table-column prop="reason" label="审核意见"></el-table-column>
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button type="primary" size="small" @click="edit(scope.row)" v-if="user.role === 'ROLE_STUDENT'">编辑</el-button>
            <el-button type="success" size="small" @click="audit(scope.row)" v-if="user.role !== 'ROLE_STUDENT'">审核</el-button>
            <el-popconfirm title="确定删除吗？" @confirm="del(scope.row.id)">
              <el-button slot="reference" size="small" type="danger" style="margin-left: 5px" v-if="user.role === 'ROLE_STUDENT'">删除</el-button>
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
      <el-dialog title="请填写审核信息" :visible.sync="dialogFormVisible" width="30%">
        <el-form :model="form">
          <el-form-item label="学号" label-width="20%">
            <el-input v-model="form.studentId" autocomplete="off" style="width: 90%" placeholder="请输入12位数的学号"></el-input>
          </el-form-item>
          <el-form-item label="专业班级" label-width="20%">
            <el-input v-model="form.majorClass" autocomplete="off" style="width: 90%"placeholder="请填写完整专业和班级名称"></el-input>
          </el-form-item>
          <el-form-item label="提交日期" label-width="20%">
            <el-date-picker v-model="form.time" type="datetime" placeholder="选择日期时间" style="width: 90%" value-format="yyyy-MM-dd HH:mm:ss"></el-date-picker>
          </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button @click="cancel()">重置 / 取消</el-button>
          <el-button type="primary" @click="submit()">确 定</el-button>
        </div>
      </el-dialog>
    </div>
    <!--审核-->
    <div  @keyup.enter="submit()">
      <el-dialog title="请审核学生信息" :visible.sync="auditVisible" width="30%" >
        <el-form :model="form">
          <el-form-item label="审核状态" label-width="20%">
            <el-radio v-model="form.status" label="审核通过"></el-radio>
            <el-radio v-model="form.status" label="审核不通过"></el-radio>
          </el-form-item>
          <el-form-item label="审核意见" label-width="20%">
            <el-input v-model="form.reason" autocomplete="off" style="width: 90%"></el-input>
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
          studentId: '',
          pageNum: 1,
          pageSize: 5,
        },
        tableData:[],
        total: 0,
        dialogFormVisible: false,
        auditVisible:false,
        form: {},
        user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")) : {}
      }
    },
    // 页面加载的时候做一些事情，在create里面
    created() {
      this.findBySearch();
    },
    // 定义一些页面上控件触发的事件调用的方法
    methods: {
      // 查询所有
      // load() {
      //   request.get("/admin").then(res => {
      //     if (res.code === '0') {
      //       this.tableData = res.data;
      //     }
      //   })
      // },
      // 模糊查询：methods里定义一个findBySearch
      findBySearch() {
        request.get("/audit/search", {
          params: this.params
        }).then(res => {
          if (res.code === '0') {
            this.tableData = res.data.list;
            this.total = res.data.total;
          } else {
              this.$message.error(res.msg)
             }
        })
      },
      cancel(){
        if(this.form.studentId || this.form.majorClass || this.form.time){
          this.form = {};
          this.form.userId = this.user.id;
          this.$message.warning("审核信息已重置！");
        }else{
          this.auditVisible = false;
        }
      },
      // 清空
      reset() {
        this.params = {
          studentId: '',
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
      // 新增
      add() {
        this.form = {};
        this.form.userId = this.user.id;
        this.dialogFormVisible = true;
      },
      // 编辑
      edit(obj) {
        this.form = obj;
        this.dialogFormVisible = true;
      },
      // 审核
      audit(obj){
        this.form = obj;
        this.auditVisible = true;
      },

      // 提交
      submit() {
        request.post("/audit", this.form).then(res => {
          if (res.code === '0') {
            this.$message({
              message: '操作成功',
              type: 'success'
            });
            this.dialogFormVisible = false;
            this.auditVisible = false;
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
        request.delete("/audit/" + id).then(res => {
          if (res.code === '0') {
            this.$message.success("删除成功");
            this.findBySearch();
          } else {
            this.$message.error(res.msg);
          }
        })
      },
    }
  };
</script>

