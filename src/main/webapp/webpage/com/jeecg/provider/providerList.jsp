<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="providerList" checkbox="false" pagination="true" fitColumns="true" title="供应商" actionUrl="providerController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人登录名称"  field="createBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人名称"  field="updateName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人登录名称"  field="updateBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新日期"  field="updateDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="供应商名称"  field="name"  query="true"  queryMode="single"  width="200"></t:dgCol>
   <t:dgCol title="客户类型"  field="consumerType"  query="true"  queryMode="single"  dictionary="consumerT"  width="120"></t:dgCol>
   <t:dgCol title="业务类型"  field="businessType"  query="true"  queryMode="single"  dictionary="businessT"  width="120"></t:dgCol>
   <t:dgCol title="开票公司"  field="invoiceTitel"  queryMode="single"  width="200"></t:dgCol>
   <t:dgCol title="开票项目"  field="invoiceType"  queryMode="single"  width="200"></t:dgCol>
   <t:dgCol title="纳税人识别号"  field="invoiceNumber"  queryMode="single"  width="200"></t:dgCol>
   <t:dgCol title="发票地址"  field="invoiceAddress"  queryMode="single"  width="400"></t:dgCol>
   <t:dgCol title="发票电话"  field="invoiceTel"  queryMode="single"  width="200"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="providerController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="providerController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="providerController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="providerController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="providerController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/jeecg/provider/providerList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 });
 
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'providerController.do?upload', "providerList");
}

//导出
function ExportXls() {
	JeecgExcelExport("providerController.do?exportXls","providerList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("providerController.do?exportXlsByT","providerList");
}

 </script>