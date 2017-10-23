<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>客户合同</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
		<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="consumerContractController.do?doUpdate" >
					<input id="id" name="id" type="hidden" value="${consumerContractPage.id }"/>
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								客户公司:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="consumerId" type="list"  datatype="*"  dictTable="consumer" dictField="id" dictText="name"   defaultVal="${consumerContractPage.consumerId}" hasLabel="false"  title="客户公司" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">客户公司</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								合同开始时间:
							</label>
						</td>
						<td class="value">
									  <input id="contractStartTime" name="contractStartTime" type="text" style="width: 150px"  class="Wdate" onClick="WdatePicker()"  datatype="*"  ignore="ignore" value='<fmt:formatDate value='${consumerContractPage.contractStartTime}' type="date" pattern="yyyy-MM-dd"/>'/>
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
									  <input id="contractEndTime" name="contractEndTime" type="text" style="width: 150px"  class="Wdate" onClick="WdatePicker()"  datatype="*"  ignore="ignore" value='<fmt:formatDate value='${consumerContractPage.contractEndTime}' type="date" pattern="yyyy-MM-dd"/>'/>
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
						     	 <input id="rebates" name="rebates" type="text" style="width: 150px" class="inputxt"  datatype="d"  ignore="ignore"  value='${consumerContractPage.rebates}'/>
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
						     	 <input id="accountDays" name="accountDays" type="text" style="width: 150px" class="inputxt"  datatype="n"  ignore="ignore"  value='${consumerContractPage.accountDays}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">账期_天</label>
						</td>
					</tr>
				
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/consumercontract/consumerContract.js"></script>		
