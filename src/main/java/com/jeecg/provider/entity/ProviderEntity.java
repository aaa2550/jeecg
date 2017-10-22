package com.jeecg.provider.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.lang.String;
import java.lang.Double;
import java.lang.Integer;
import java.math.BigDecimal;
import javax.xml.soap.Text;
import java.sql.Blob;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;
import org.jeecgframework.poi.excel.annotation.Excel;

/**   
 * @Title: Entity
 * @Description: 供应商
 * @author onlineGenerator
 * @date 2017-10-21 21:16:50
 * @version V1.0   
 *
 */
@Entity
@Table(name = "provider", schema = "")
@SuppressWarnings("serial")
public class ProviderEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**创建人名称*/
	private java.lang.String createName;
	/**创建人登录名称*/
	private java.lang.String createBy;
	/**创建日期*/
	private java.util.Date createDate;
	/**更新人名称*/
	private java.lang.String updateName;
	/**更新人登录名称*/
	private java.lang.String updateBy;
	/**更新日期*/
	private java.util.Date updateDate;
	/**供应商名称*/
	@Excel(name="供应商名称",width=15)
	private java.lang.String name;
	/**客户类型*/
	@Excel(name="客户类型",width=15,dicCode="consumerT")
	private java.lang.Integer consumerType;
	/**业务类型*/
	@Excel(name="业务类型",width=15,dicCode="businessT")
	private java.lang.Integer businessType;
	/**开票公司*/
	@Excel(name="开票公司",width=15)
	private java.lang.String invoiceTitel;
	/**开票项目*/
	@Excel(name="开票项目",width=15)
	private java.lang.String invoiceType;
	/**纳税人识别号*/
	@Excel(name="纳税人识别号",width=15)
	private java.lang.String invoiceNumber;
	/**发票地址*/
	@Excel(name="发票地址",width=15)
	private java.lang.String invoiceAddress;
	/**发票电话*/
	@Excel(name="发票电话",width=15)
	private java.lang.String invoiceTel;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
	 */
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")

	@Column(name ="ID",nullable=false,length=36)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  主键
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人名称
	 */

	@Column(name ="CREATE_NAME",nullable=true,length=50)
	public java.lang.String getCreateName(){
		return this.createName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人名称
	 */
	public void setCreateName(java.lang.String createName){
		this.createName = createName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人登录名称
	 */

	@Column(name ="CREATE_BY",nullable=true,length=50)
	public java.lang.String getCreateBy(){
		return this.createBy;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人登录名称
	 */
	public void setCreateBy(java.lang.String createBy){
		this.createBy = createBy;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  创建日期
	 */

	@Column(name ="CREATE_DATE",nullable=true,length=20)
	public java.util.Date getCreateDate(){
		return this.createDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  创建日期
	 */
	public void setCreateDate(java.util.Date createDate){
		this.createDate = createDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  更新人名称
	 */

	@Column(name ="UPDATE_NAME",nullable=true,length=50)
	public java.lang.String getUpdateName(){
		return this.updateName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  更新人名称
	 */
	public void setUpdateName(java.lang.String updateName){
		this.updateName = updateName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  更新人登录名称
	 */

	@Column(name ="UPDATE_BY",nullable=true,length=50)
	public java.lang.String getUpdateBy(){
		return this.updateBy;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  更新人登录名称
	 */
	public void setUpdateBy(java.lang.String updateBy){
		this.updateBy = updateBy;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  更新日期
	 */

	@Column(name ="UPDATE_DATE",nullable=true,length=20)
	public java.util.Date getUpdateDate(){
		return this.updateDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  更新日期
	 */
	public void setUpdateDate(java.util.Date updateDate){
		this.updateDate = updateDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  供应商名称
	 */

	@Column(name ="NAME",nullable=true,length=32)
	public java.lang.String getName(){
		return this.name;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  供应商名称
	 */
	public void setName(java.lang.String name){
		this.name = name;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  客户类型
	 */

	@Column(name ="CONSUMER_TYPE",nullable=true,length=32)
	public java.lang.Integer getConsumerType(){
		return this.consumerType;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  客户类型
	 */
	public void setConsumerType(java.lang.Integer consumerType){
		this.consumerType = consumerType;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  业务类型
	 */

	@Column(name ="BUSINESS_TYPE",nullable=true,length=32)
	public java.lang.Integer getBusinessType(){
		return this.businessType;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  业务类型
	 */
	public void setBusinessType(java.lang.Integer businessType){
		this.businessType = businessType;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  开票公司
	 */

	@Column(name ="INVOICE_TITEL",nullable=true,length=32)
	public java.lang.String getInvoiceTitel(){
		return this.invoiceTitel;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  开票公司
	 */
	public void setInvoiceTitel(java.lang.String invoiceTitel){
		this.invoiceTitel = invoiceTitel;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  开票项目
	 */

	@Column(name ="INVOICE_TYPE",nullable=true,length=32)
	public java.lang.String getInvoiceType(){
		return this.invoiceType;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  开票项目
	 */
	public void setInvoiceType(java.lang.String invoiceType){
		this.invoiceType = invoiceType;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  纳税人识别号
	 */

	@Column(name ="INVOICE_NUMBER",nullable=true,length=32)
	public java.lang.String getInvoiceNumber(){
		return this.invoiceNumber;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  纳税人识别号
	 */
	public void setInvoiceNumber(java.lang.String invoiceNumber){
		this.invoiceNumber = invoiceNumber;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  发票地址
	 */

	@Column(name ="INVOICE_ADDRESS",nullable=true,length=32)
	public java.lang.String getInvoiceAddress(){
		return this.invoiceAddress;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  发票地址
	 */
	public void setInvoiceAddress(java.lang.String invoiceAddress){
		this.invoiceAddress = invoiceAddress;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  发票电话
	 */

	@Column(name ="INVOICE_TEL",nullable=true,length=32)
	public java.lang.String getInvoiceTel(){
		return this.invoiceTel;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  发票电话
	 */
	public void setInvoiceTel(java.lang.String invoiceTel){
		this.invoiceTel = invoiceTel;
	}
}
