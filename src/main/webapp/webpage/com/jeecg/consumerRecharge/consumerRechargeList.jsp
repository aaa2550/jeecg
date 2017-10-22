<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="consumerRechargeList" checkbox="false" pagination="true" fitColumns="true" title="客户充值信息" actionUrl="consumerRechargeController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人登录名称"  field="createBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人名称"  field="updateName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人登录名称"  field="updateBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新日期"  field="updateDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="账户ID"  field="accountId"  query="true"  queryMode="single"  dictionary="account,id,account_id"  width="120"></t:dgCol>
   <t:dgCol title="我方返点"  field="ourRebates"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="对方返点"  field="oppositePartyRebates"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="账面充值"  field="paperRecharge"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="返点充值"  field="rebatesRecharge"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="充值成本"  field="rechargeCost"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="consumerRechargeController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="consumerRechargeController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="consumerRechargeController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="consumerRechargeController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="consumerRechargeController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/jeecg/consumerRecharge/consumerRechargeList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 });
 
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'consumerRechargeController.do?upload', "consumerRechargeList");
}

//导出
function ExportXls() {
	JeecgExcelExport("consumerRechargeController.do?exportXls","consumerRechargeList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("consumerRechargeController.do?exportXlsByT","consumerRechargeList");
}

 </script>