<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>供应商合同</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="providerContractController.do?doAdd" >
					<input id="id" name="id" type="hidden" value="${providerContractPage.id }"/>
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							供应商公司:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="providerId" type="list"  datatype="*"  dictTable="provider" dictField="id" dictText="name"  defaultVal="${providerContractPage.providerId}" hasLabel="false"  title="供应商公司" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">供应商公司</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							合同开始时间:
						</label>
					</td>
					<td class="value">
							   <input id="contractStartTime" name="contractStartTime" type="text" style="width: 150px" class="Wdate" onClick="WdatePicker()"  datatype="*"  ignore="ignore" />    
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">合同开始时间</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							合同结束时间:
						</label>
					</td>
					<td class="value">
							   <input id="contractEndTime" name="contractEndTime" type="text" style="width: 150px" class="Wdate" onClick="WdatePicker()"  datatype="*"  ignore="ignore" />    
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">合同结束时间</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							返点:
						</label>
					</td>
					<td class="value">
					     	 <input id="rebates" name="rebates" type="text" style="width: 150px" class="inputxt"  datatype="d"  ignore="ignore" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">返点</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							账期_天:
						</label>
					</td>
					<td class="value">
					     	 <input id="accountDays" name="accountDays" type="text" style="width: 150px" class="inputxt"  datatype="n"  ignore="ignore" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">账期_天</label>
						</td>
				</tr>
				
				
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/providercontract/providerContract.js"></script>		
