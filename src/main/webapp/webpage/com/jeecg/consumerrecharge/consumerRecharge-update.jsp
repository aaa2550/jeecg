<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>客户充值信息</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
		<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="consumerRechargeController.do?doUpdate" >
					<input id="id" name="id" type="hidden" value="${consumerRechargePage.id }"/>
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								申请日期:
							</label>
						</td>
						<td class="value">
									  <input id="applyTime" name="applyTime" type="text" style="width: 150px"  class="Wdate" onClick="WdatePicker()"  ignore="ignore" value='<fmt:formatDate value='${consumerRechargePage.applyTime}' type="date" pattern="yyyy-MM-dd"/>'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">申请日期</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								账户ID:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="accountId" type="list"  datatype="*"  dictTable="account" dictField="id" dictText="id"   defaultVal="${consumerRechargePage.accountId}" hasLabel="false"  title="账户ID" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">账户ID</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								账户名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="accountName" name="accountName" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked"  value='${consumerRechargePage.accountName}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">账户名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								账面充值:
							</label>
						</td>
						<td class="value">
						     	 <input id="paperRecharge" name="paperRecharge" type="text" style="width: 150px" class="inputxt"  datatype="d"  ignore="checked"  value='${consumerRechargePage.paperRecharge}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">账面充值</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								返点充值:
							</label>
						</td>
						<td class="value">
						     	 <input id="rebatesRecharge" name="rebatesRecharge" type="text" style="width: 150px" class="inputxt"  datatype="d"  ignore="checked"  value='${consumerRechargePage.rebatesRecharge}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">返点充值</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								供应商名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="providerName" name="providerName" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked"  value='${consumerRechargePage.providerName}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">供应商名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								客户名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="consumerName" name="consumerName" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked"  value='${consumerRechargePage.consumerName}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">客户名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								投放平台:
							</label>
						</td>
						<td class="value">
						     	 <input id="platform" name="platform" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked"  value='${consumerRechargePage.platform}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">投放平台</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								我方返点:
							</label>
						</td>
						<td class="value">
						     	 <input id="ourRebates" name="ourRebates" type="text" style="width: 150px" class="inputxt"  datatype="d"  ignore="checked"  value='${consumerRechargePage.ourRebates}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">我方返点</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								对方返点:
							</label>
						</td>
						<td class="value">
						     	 <input id="theyRebates" name="theyRebates" type="text" style="width: 150px" class="inputxt"  datatype="d"  ignore="checked"  value='${consumerRechargePage.theyRebates}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">对方返点</label>
						</td>
					</tr>
				
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/consumerrecharge/consumerRecharge.js"></script>		
