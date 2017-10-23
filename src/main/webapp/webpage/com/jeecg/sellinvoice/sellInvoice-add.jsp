<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>销售发票</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="sellInvoiceController.do?doAdd" >
					<input id="id" name="id" type="hidden" value="${sellInvoicePage.id }"/>
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							申请日期:
						</label>
					</td>
					<td class="value">
					     	 <input id="applyTime" name="applyTime" type="text" style="width: 150px" class="inputxt"  ignore="ignore" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">申请日期</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							申请人:
						</label>
					</td>
					<td class="value">
					     	 <input id="applyManName" name="applyManName" type="text" style="width: 150px" class="inputxt"  ignore="ignore" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">申请人</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							收票公司:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="consumerId" type="list"  datatype="*"  dictTable="consumer" dictField="id" dictText="name"  defaultVal="${sellInvoicePage.consumerId}" hasLabel="false"  title="收票公司" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">收票公司</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							金额:
						</label>
					</td>
					<td class="value">
					     	 <input id="money" name="money" type="text" style="width: 150px" class="inputxt"  datatype="d"  ignore="checked" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">金额</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							投放平台:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="platform" type="list"  datatype="*"  typeGroupCode="platformT"  defaultVal="${sellInvoicePage.platform}" hasLabel="false"  title="投放平台" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">投放平台</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							费用发生日期:
						</label>
					</td>
					<td class="value">
							   <input id="occurTime" name="occurTime" type="text" style="width: 150px" class="Wdate" onClick="WdatePicker()"  datatype="*"  ignore="checked" />    
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">费用发生日期</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							开票日期:
						</label>
					</td>
					<td class="value">
							   <input id="openTime" name="openTime" type="text" style="width: 150px" class="Wdate" onClick="WdatePicker()"  datatype="*"  ignore="checked" />    
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">开票日期</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							发票号:
						</label>
					</td>
					<td class="value">
					     	 <input id="invoiceSequence" name="invoiceSequence" type="text" style="width: 150px" class="inputxt"  datatype="n"  ignore="checked" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">发票号</label>
						</td>
				</tr>
				
				
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/sellinvoice/sellInvoice.js"></script>		
