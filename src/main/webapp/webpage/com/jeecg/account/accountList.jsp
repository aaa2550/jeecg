<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="accountList" checkbox="false" pagination="true" fitColumns="true" title="账户信息" actionUrl="accountController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人登录名称"  field="createBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人名称"  field="updateName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人登录名称"  field="updateBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新日期"  field="updateDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="投放平台"  field="platform"  query="true"  queryMode="single"  dictionary="platformT"  width="120"></t:dgCol>
   <t:dgCol title="供应商公司"  field="providerId"  query="true"  queryMode="single"  dictionary="provider,id,name"  width="120"></t:dgCol>
   <t:dgCol title="客户公司"  field="consumerId"  query="true"  queryMode="single"  dictionary="consumer,id,name"  width="120"></t:dgCol>
   <t:dgCol title="APPID"  field="appId"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="APP名称"  field="appName"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="账户ID"  field="accountId"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="账户名称"  field="accountName"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="QQ"  field="qq"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="行业"  field="industry"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="推广链接"  field="generalizeLink"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="申请时间"  field="applyTime"  formatter="yyyy-MM-dd"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="申请人名称"  field="applyManName"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="通过日期"  field="passTime"  formatter="yyyy-MM-dd"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="渠道"  field="channel"  queryMode="single"  dictionary="channelT"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="accountController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="accountController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="accountController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="accountController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="accountController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/jeecg/account/accountList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 });
 
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'accountController.do?upload', "accountList");
}

//导出
function ExportXls() {
	JeecgExcelExport("accountController.do?exportXls","accountList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("accountController.do?exportXlsByT","accountList");
}

 </script>