<template>
  <div>
    <!--搜索框-->
    <div style="margin-top: 20px">
      <el-input v-model="params.helpCode" style="width: 200px" placeholder="请输入助记码"></el-input>
      <el-input v-model="params.name" style="width: 200px; margin-left: 8px" placeholder="请输入检查组名称"></el-input>
      <el-button type="primary" style="margin-left: 8px" @click="findBySearch()">查询</el-button>
      <el-button type="warning" style="margin-left: 8px" @click="reset()">清空</el-button>
      <el-button type="primary" style="margin-left: 8px" @click="add()" v-if="user.role === 'ROLE_ADMIN' ">新增</el-button>
      <el-popconfirm title="确定批量删除这些数据吗？" @confirm="delBatch()">
        <el-button slot="reference" type="danger" style="margin-left: 8px" v-if="user.role === 'ROLE_ADMIN' ">批量删除</el-button>
      </el-popconfirm>
      <el-button type="success" style="margin-left: 8px" @click="exp()">导出报表</el-button>
      <el-upload action="http://123.57.210.242:8080/api/checkgroup/upload" :show-file-list="false" style="display: inline-block; margin-left: 8px" :on-success="successUpload">
        <el-button type="primary" v-if="user.role === 'ROLE_ADMIN' ">批量导入</el-button>
      </el-upload>
    </div>
    <!--表格内容-->
    <div>
      <el-table :data="tableData" style="width: 100%; margin: 15px 0px" ref="table" @selection-change="handleSelectionChange" :row-key="getRowKeys">
        <el-table-column type="selection" width="55" align="center" :reserve-selection="true" v-if="user.role === 'ROLE_ADMIN' "></el-table-column>
        <el-table-column prop="code" label="检查组编码"></el-table-column>
        <el-table-column prop="name" label="检查组名称"></el-table-column>
        <el-table-column prop="helpCode" label="助记码"></el-table-column>
        <el-table-column prop="sex" label="适用性别"></el-table-column>
        <el-table-column prop="attention" label="注意事项"></el-table-column>
        <el-table-column prop="remark" label="检查组说明"></el-table-column>
        <el-table-column label="操作" v-if="user.role === 'ROLE_ADMIN' ">
          <template slot-scope="scope">
            <el-button type="primary" @click="edit(scope.row)" size="small">编辑</el-button>
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
    <!--编辑-->
    <div @keyup.enter="submit()">
      <el-dialog title="新增检查组" :visible.sync="dialogFormVisible" width="40%">
        <el-form :model="form">
          <el-form-item label="检查组编码" label-width="30%">
            <el-input v-model="form.code" autocomplete="off" style="width: 90%"></el-input>
          </el-form-item>
          <el-form-item label="检查组名称" label-width="30%">
            <el-input v-model="form.name" autocomplete="off" style="width: 90%" placeholder="请输入检查组名称"></el-input>
          </el-form-item>
          <el-form-item label="助记码" label-width="30%">
            <el-input v-model="form.helpCode" autocomplete="off" style="width: 90%"></el-input>
          </el-form-item>
          <el-form-item label="适用性别" label-width="30%">
            <el-select v-model="form.sex" placeholder="请选择" style="width: 90%">
              <el-option label="不限" value="0"></el-option>
              <el-option label="男" value="1"></el-option>
              <el-option label="女" value="2"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="注意事项" label-width="30%">
            <el-input v-model="form.attention" autocomplete="off" style="width: 90%"></el-input>
          </el-form-item>
          <el-form-item label="检查组说明" label-width="30%">
            <el-input v-model="form.remark" autocomplete="off" style="width: 90%"></el-input>
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
          helpCode: '',
          pageNum: 1,
          pageSize: 5
        },
        tableData:[],
        total: 0,
        dialogFormVisible: false,
        form: {},
        multipleSelection:[],
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
        request.get("/checkgroup/search", {
          params: this.params
        }).then(res => {
          if (res.code === '0') {
            this.tableData = res.data.list;
            this.total = res.data.total;
          } else {

             }
        })
      },
      cancel(){
        if(this.form.code || this.form.name || this.form.sex || this.form.helpCode || this.form.remark || this.form.attention){
          this.form = {};
          this.$message.warning("检查组信息已重置！");
        }else{
          this.dialogFormVisible = false;
        }
      },
      // 清空
      reset() {
        this.params = {
          name: '',
          helpCode: '',
          pageNum: 1,
          pageSize: 5,

        }
        console.log(this.params)
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
        this.dialogFormVisible = true;
      },
      // 编辑
      edit(obj) {
        this.form = obj;
        this.dialogFormVisible = true;
      },
      // 新增提交xq
      submit() {
        request.post("/checkgroup", this.form).then(res => {
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
        request.delete("/checkgroup/" + id).then(res => {
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
      handleSelectionChange(val) {
        this.multipleSelection = val;
      },
      // 批量删除
      delBatch(){
        // 判断是否没有勾选
        if (this.multipleSelection.length === 0){
          this.$message.warning("请勾选要删除的数据")
          return
        }
        request.put('/checkgroup/delBatch',this.multipleSelection).then(res =>{
          if (res.code === '0'){
            this.$message.success("批量删除成功")
            this.findBySearch()
          }
          else{
            this.$message.error(res.msg)
          }
        })
      },
      // 分页批量选择
      getRowKeys(row){
        return row.id
      },
      // 批量导出报表
      exp(){
        let user = localStorage.getItem("user")
        location.href = 'http://jkgl.free.idcfengye.com/api/checkgroup/export?token='+ JSON.parse(user).token
      },
      // 批量导入
      successUpload(res){
        if (res.code === '0'){
          this.$message.success("批量导入成功")
          this.findBySearch()
        } else {
          this.$message.error(res.msg)
        }
      },

    }
  };
</script>

