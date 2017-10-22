<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>供应商</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="providerController.do?doAdd" >
					<input id="id" name="id" type="hidden" value="${providerPage.id }"/>
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							供应商名称:
						</label>
					</td>
					<td class="value">
					     	 <input id="name" name="name" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">供应商名称</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							客户类型:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="consumerType" type="list"  datatype="*"  typeGroupCode="consumerT"  defaultVal="${providerPage.consumerType}" hasLabel="false"  title="客户类型" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">客户类型</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							业务类型:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="businessType" type="list"  datatype="*"  typeGroupCode="businessT"  defaultVal="${providerPage.businessType}" hasLabel="false"  title="业务类型" ></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">业务类型</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							开票公司:
						</label>
					</td>
					<td class="value">
					     	 <input id="invoiceTitel" name="invoiceTitel" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">开票公司</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							开票项目:
						</label>
					</td>
					<td class="value">
					     	 <input id="invoiceType" name="invoiceType" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">开票项目</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							纳税人识别号:
						</label>
					</td>
					<td class="value">
					     	 <input id="invoiceNumber" name="invoiceNumber" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">纳税人识别号</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							发票地址:
						</label>
					</td>
					<td class="value">
					     	 <input id="invoiceAddress" name="invoiceAddress" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">发票地址</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							发票电话:
						</label>
					</td>
					<td class="value">
					     	 <input id="invoiceTel" name="invoiceTel" type="text" style="width: 150px" class="inputxt"  datatype="*"  ignore="checked" />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">发票电话</label>
						</td>
				</tr>
				
				
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/com/jeecg/provider/provider.js"></script>		
