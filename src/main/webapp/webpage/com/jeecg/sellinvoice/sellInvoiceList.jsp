<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="sellInvoiceList" checkbox="false" pagination="true" fitColumns="true" title="销售发票" actionUrl="sellInvoiceController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人登录名称"  field="createBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人名称"  field="updateName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人登录名称"  field="updateBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新日期"  field="updateDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="申请日期"  field="applyTime"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="申请人"  field="applyManName"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="收票公司"  field="consumerId"  query="true"  queryMode="single"  dictionary="consumer,id,name"  width="120"></t:dgCol>
   <t:dgCol title="金额"  field="money"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="投放平台"  field="platform"  query="true"  queryMode="single"  dictionary="platformT"  width="120"></t:dgCol>
   <t:dgCol title="费用发生日期"  field="occurTime"  formatter="yyyy-MM-dd"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="开票日期"  field="openTime"  formatter="yyyy-MM-dd"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="发票号"  field="invoiceSequence"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="sellInvoiceController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="sellInvoiceController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="sellInvoiceController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="sellInvoiceController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="sellInvoiceController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/jeecg/sellinvoice/sellInvoiceList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 });
 
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'sellInvoiceController.do?upload', "sellInvoiceList");
}

//导出
function ExportXls() {
	JeecgExcelExport("sellInvoiceController.do?exportXls","sellInvoiceList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("sellInvoiceController.do?exportXlsByT","sellInvoiceList");
}

 </script>