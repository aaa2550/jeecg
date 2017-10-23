<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="payInvoiceList" checkbox="false" pagination="true" fitColumns="true" title="付款发票" actionUrl="payInvoiceController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人登录名称"  field="createBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人名称"  field="updateName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人登录名称"  field="updateBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新日期"  field="updateDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="申请日期"  field="applyTime"  formatter="yyyy-MM-dd"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="申请人"  field="applyManName"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="供应商公司"  field="providerId"  query="true"  queryMode="single"  dictionary="provider,id,name"  width="120"></t:dgCol>
   <t:dgCol title="金额"  field="money"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="投放平台"  field="platform"  query="true"  queryMode="single"  dictionary="platformT"  width="120"></t:dgCol>
   <t:dgCol title="费用发生日期"  field="occurTime"  formatter="yyyy-MM-dd"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="开票日期"  field="openTime"  formatter="yyyy-MM-dd"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="发票号"  field="invoiceSequence"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="payInvoiceController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="payInvoiceController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="payInvoiceController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="payInvoiceController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="payInvoiceController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/jeecg/payinvoice/payInvoiceList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 });
 
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'payInvoiceController.do?upload', "payInvoiceList");
}

//导出
function ExportXls() {
	JeecgExcelExport("payInvoiceController.do?exportXls","payInvoiceList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("payInvoiceController.do?exportXlsByT","payInvoiceList");
}

 </script>