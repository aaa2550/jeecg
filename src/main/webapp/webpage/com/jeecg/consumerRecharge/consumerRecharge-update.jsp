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
								账户ID:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="accountId" type="list"  datatype="*"  dictTable="account" dictField="id" dictText="account_id"   defaultVal="${consumerRechargePage.accountId}" hasLabel="false"  title="账户ID" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">账户ID</label>
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
						     	 <input id="oppositePartyRebates" name="oppositePartyRebates" type="text" style="width: 150px" class="inputxt"  datatype="d"  ignore="checked"  value='${consumerRechargePage.oppositePartyRebates}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">对方返点</label>
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
								充值成本:
							</label>
						</td>
						<td class="value">
						     	 <input id="rechargeCost" name="rechargeCost" type="text" style="width: 150px" class="inputxt"  datatype="d"  ignore="ignore"  value='${consumerRechargePage.rechargeCost}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">充值成本</label>
						</td>
					</tr>
				
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/consumerRecharge/consumerRecharge.js"></script>		
