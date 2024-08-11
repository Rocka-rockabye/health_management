<template>
  <div>
    <!--头部-->
    <div style="margin-top: 20px">
      <el-input v-model="params.name" style="width: 200px" placeholder="请输入套餐名称"></el-input>
      <el-input v-model="params.helpCode" style="width: 200px; margin-left: 8px" placeholder="请输入助记码"></el-input>
      <el-button type="primary" style="margin-left: 8px" @click="findBySearch()">查询</el-button>
      <el-button type="warning" style="margin-left: 8px" @click="reset()">清空</el-button>
      <el-button type="primary" style="margin-left: 8px" @click="add()" v-if="user.role === 'ROLE_ADMIN' ">新增</el-button>
      <el-popconfirm title="确定批量删除这些数据吗？" @confirm="delBatch()">
        <el-button slot="reference" type="danger" style="margin-left: 8px" v-if="user.role === 'ROLE_ADMIN' ">批量删除</el-button>
      </el-popconfirm>
      <el-button type="success" style="margin-left: 8px" @click="exp()" >导出报表</el-button>
      <el-upload action="http://jkgl.free.idcfengye.com/api/setmeal/upload" :show-file-list="false" style="display: inline-block; margin-left: 8px" :on-success="successUploaded">
        <el-button type="primary" v-if="user.role === 'ROLE_ADMIN' ">批量导入</el-button>
      </el-upload>
    </div>
    <!--表格-->
    <div>
      <el-table :data="tableData" style="width: 100%; margin: 15px 0px" ref="table" @selection-change="handleSelectionChange" :row-key="getRowKeys">
        <el-table-column type="selection" width="45" align="center" :reserve-selection="true" v-if="user.role === 'ROLE_ADMIN' "></el-table-column>
        <el-table-column prop="code" label="套餐编码" align="center" width="80px"></el-table-column>
        <el-table-column label="套餐封面" align="center" width="100px">
          <template v-slot="scope">
            <el-image
                style="width: 70px; height: 70px"
                :src="'http://jkgl.free.idcfengye.com/api/files/' + scope.row.img"
                :preview-src-list="['http://jkgl.free.idcfengye.com/api/files/' + scope.row.img]">
            </el-image>
          </template>
        </el-table-column>
        <el-table-column prop="name" label="套餐名称" align="center" width="118px"></el-table-column>
        <el-table-column prop="sex" label="适用性别" align="center" width="80px"></el-table-column>
        <el-table-column prop="age" label="适用年龄/周岁" align="center" width="120px"></el-table-column>
        <el-table-column prop="helpCode" label="助记码" align="center" width="65px"></el-table-column>
        <el-table-column prop="price" label="套餐价格/元" align="center" width="100px"></el-table-column>
        <el-table-column prop="typeName" label="套餐类别" align="center" width="80px"></el-table-column>
        <el-table-column prop="attention" label="注意事项" align="center"width="80px"></el-table-column>
        <el-table-column prop="remark" label="说明" align="center" width="250px"></el-table-column>
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button type="primary" @click="edit(scope.row)" style="margin: 5px 0" size="small" v-if="user.role === 'ROLE_ADMIN' ">编辑</el-button>
            <el-button type="primary" @click="downlow(scope.row.img)" style="margin: 5px 5px" size="small">下载</el-button>
            <el-popconfirm title="确定删除吗？" @confirm="del(scope.row.id)" size="small">
              <el-button slot="reference" type="danger" style="margin: 5px 0" size="small" v-if="user.role === 'ROLE_ADMIN' ">删除</el-button>
            </el-popconfirm>
          </template>
        </el-table-column>
      </el-table>
    </div>
    <!--尾部-->
    <div style="margin-top: 50px;text-align: center">
      <el-pagination
          @size-change="handleSizeChange"
          @current-change="handleCurrentChange"
          :current-page="params.pageNum"
          :page-sizes="[5, 10, 15, 20]"
          :page-size="params.pageSize"
          layout="total, sizes, prev, pager, next"
          :total="total">
      </el-pagination>
    </div>
    <!--编辑-->
    <div @keyup.enter="submit()">
      <el-dialog title="新增套餐" :visible.sync="dialogFormVisible" width="50%">
        <el-form :model="form">
          <el-form-item label="套餐类别" label-width="20%">
            <el-select v-model="form.typeId" placeholder="请选择" style="width: 90%">
              <el-option v-for="item in typeObjs" :key="item.id" :label="item.name" :value="item.id"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="套餐编码" label-width="20%">
            <el-input v-model="form.code" autocomplete="off" style="width: 90%"></el-input>
          </el-form-item>
          <el-form-item label="套餐名称" label-width="20%">
            <el-input v-model="form.name" autocomplete="off" style="width: 90%" placeholder="请输入套餐名称"></el-input>
          </el-form-item>
          <el-form-item label="套餐封面" label-width="20%">
            <el-upload action="http://jkgl.free.idcfengye.com/api/files/upload" :on-success="successUpload">
              <el-button size="small" type="primary">点击上传</el-button>
            </el-upload>
          </el-form-item>
          <el-form-item label="助记码" label-width="20%">
            <el-input v-model="form.helpCode" autocomplete="off" style="width: 90%"></el-input>
          </el-form-item>
          <el-form-item label="套餐价格" label-width="20%">
            <el-input v-model="form.price" autocomplete="off" style="width: 90%" placeholder="请输入数字格式：xx.x"></el-input>
          </el-form-item>
          <el-form-item label="适用性别" label-width="20%">
            <el-select v-model="form.sex" placeholder="请选择" style="width: 90%">
              <el-option label="不限" value="0"></el-option>
              <el-option label="男" value="1"></el-option>
              <el-option label="女" value="2"></el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="适用年龄" label-width="20%">
            <el-input v-model="form.age" autocomplete="off" style="width: 90%" placeholder="请输入数字格式：xx-xx"></el-input>
          </el-form-item>
          <el-form-item label="注意事项" label-width="20%">
            <el-input v-model="form.attention" autocomplete="off" style="width: 90%"></el-input>
          </el-form-item>
          <el-form-item label="说明" label-width="20%">
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


<script>
import request from "@/utils/request";

export default {
  data() {
    return {
      params: {
        name: '',
        helpCode: '',
        pageNum: 1,
        pageSize: 5
      },
      tableData: [],
      total: 0,
      dialogFormVisible: false,
      form: {},
      multipleSelection:[],
      typeObjs: [],
      user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")) : {},
    }
  },
  // 页面加载的时候，做一些事情，在created里面
  created() {
    this.findBySearch();
    this.findTypes();
  },
  // 定义一些页面上控件出发的事件调用的方法
  methods: {
    findBySearch() {
      request.get("/setmeal/search", {
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
      if(this.form.code || this.form.name || this.form.sex || this.form.age || this.form.type || this.form.price || this.form.remark || this.form.attention || this.form.typeId || this.form.helpCode){
        this.form = {};
        this.$message.warning("套餐信息已重置！");
      }else{
        this.dialogFormVisible = false;
      }
    },
    add() {
      this.form = {};
      this.dialogFormVisible = true;
    },
    edit(obj) {
      this.form = obj;
      this.dialogFormVisible = true;
    },
    reset() {
      this.params = {
        name: '',
        helpCode: '',
        pageNum: 1,
        pageSize: 5,

      }
      this.findBySearch();
    },
    handleSizeChange(pageSize) {
      this.params.pageSize = pageSize;
      this.findBySearch();
    },
    handleCurrentChange(pageNum) {
      this.params.pageNum = pageNum;
      this.findBySearch();
    },
    submit() {
      request.post("/setmeal", this.form).then(res => {
        if (res.code === '0') {
          this.$message.success("操作成功");
          this.dialogFormVisible = false;
          this.findBySearch();
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    del(id) {
      request.delete("/setmeal/" + id).then(res => {
        if (res.code === '0') {
          this.$message.success("删除成功");
          this.findBySearch();
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    // 钩子函数
    successUpload(res) {
      this.form.img = res.data;
    },
    downlow(flag) {
      location.href = 'http://jkgl.free.idcfengye.com/api/files/' + flag
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
      request.put('/setmeal/delBatch',this.multipleSelection).then(res =>{
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
      location.href = 'http://jkgl.free.idcfengye.com/api/setmeal/export?token='+ JSON.parse(user).token
    },
    // 批量导入
    successUploaded(res){
      if (res.code === '0'){
        this.$message.success("批量导入成功")
        this.findBySearch()
      } else {
        this.$message.error(res.msg)
      }
    },
    findTypes() {
      request.get("/type").then(res => {
        if (res.code === '0') {
          this.typeObjs = res.data;
        } else {
          this.$message.error(res.msg)
        }
      })
    },
  }
}
</script>
