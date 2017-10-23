<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>媒体信息</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
		<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="mediaInfoController.do?doUpdate" >
					<input id="id" name="id" type="hidden" value="${mediaInfoPage.id }"/>
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								媒体名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="name" name="name" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="ignore"  value='${mediaInfoPage.name}'/>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">媒体名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								业务类型:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="businessType" type="list"  datatype="*"  typeGroupCode="businessT"   defaultVal="${mediaInfoPage.businessType}" hasLabel="false"  title="业务类型" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">业务类型</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								计费方式:
							</label>
						</td>
						<td class="value">
									<t:dictSelect field="calculateType" type="list"  datatype="*"  typeGroupCode="calculateT"   defaultVal="${mediaInfoPage.calculateType}" hasLabel="false"  title="计费方式" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">计费方式</label>
						</td>
					</tr>
				
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/mediainfo/mediaInfo.js"></script>		
