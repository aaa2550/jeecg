<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>账户信息</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="accountController.do?doAdd" >
					<input id="id" name="id" type="hidden" value="${accountPage.id }"/>
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							投放平台:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="platform" type="list"  datatype="*"  typeGroupCode="platformT"  defaultVal="${accountPage.platform}" hasLabel="false"  title="投放平台" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">投放平台</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							供应商公司:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="providerId" type="list"  datatype="*"  dictTable="provider" dictField="id" dictText="name"  defaultVal="${accountPage.providerId}" hasLabel="false"  title="供应商公司" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">供应商公司</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							客户公司:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="consumerId" type="list"  datatype="*"  dictTable="consumer" dictField="id" dictText="name"  defaultVal="${accountPage.consumerId}" hasLabel="false"  title="客户公司" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">客户公司</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							APPID:
						</label>
					</td>
					<td class="value">
					     	 <input id="appId" name="appId" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="ignore" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">APPID</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							APP名称:
						</label>
					</td>
					<td class="value">
					     	 <input id="appName" name="appName" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="ignore" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">APP名称</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							账户ID:
						</label>
					</td>
					<td class="value">
					     	 <input id="accountId" name="accountId" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="ignore" />
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
					     	 <input id="accountName" name="accountName" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="ignore" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">账户名称</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							QQ:
						</label>
					</td>
					<td class="value">
					     	 <input id="qq" name="qq" type="text" style="width: 150px" class="inputxt"  datatype="n"  ignore="ignore" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">QQ</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							行业:
						</label>
					</td>
					<td class="value">
					     	 <input id="industry" name="industry" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="ignore" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">行业</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							推广链接:
						</label>
					</td>
					<td class="value">
					     	 <input id="generalizeLink" name="generalizeLink" type="text" style="width: 150px" class="inputxt"  datatype="url"  ignore="ignore" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">推广链接</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							申请时间:
						</label>
					</td>
					<td class="value">
							   <input id="applyTime" name="applyTime" type="text" style="width: 150px" class="Wdate" onClick="WdatePicker()"  datatype="*"  ignore="ignore" />    
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">申请时间</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							申请人名称:
						</label>
					</td>
					<td class="value">
					     	 <input id="applyManName" name="applyManName" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="ignore" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">申请人名称</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							通过日期:
						</label>
					</td>
					<td class="value">
							   <input id="passTime" name="passTime" type="text" style="width: 150px" class="Wdate" onClick="WdatePicker()"  datatype="*"  ignore="ignore" />    
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">通过日期</label>
						</td>
					<td align="right">
						<label class="Validform_label">
							渠道:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="channel" type="checkbox"  datatype="*"  typeGroupCode="channelT"  defaultVal="${accountPage.channel}" hasLabel="false"  title="渠道" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">渠道</label>
						</td>
					</tr>
				
				
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/account/account.js"></script>		
