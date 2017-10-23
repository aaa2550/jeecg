package com.jeecg.payinvoice.entity;

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
 * @Description: 付款发票
 * @author onlineGenerator
 * @date 2017-10-23 18:56:28
 * @version V1.0   
 *
 */
@Entity
@Table(name = "pay_invoice", schema = "")
@SuppressWarnings("serial")
public class PayInvoiceEntity implements java.io.Serializable {
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
	/**申请日期*/
	@Excel(name="申请日期",width=15,format = "yyyy-MM-dd")
	private java.util.Date applyTime;
	/**申请人*/
	@Excel(name="申请人",width=15)
	private java.lang.String applyManName;
	/**供应商公司*/
	@Excel(name="供应商公司",width=15,dictTable ="provider",dicCode ="id",dicText ="name")
	private java.lang.Integer providerId;
	/**金额*/
	@Excel(name="金额",width=15)
	private java.lang.Double money;
	/**投放平台*/
	@Excel(name="投放平台",width=15,dicCode="platformT")
	private java.lang.Integer platform;
	/**费用发生日期*/
	@Excel(name="费用发生日期",width=15,format = "yyyy-MM-dd")
	private java.util.Date occurTime;
	/**开票日期*/
	@Excel(name="开票日期",width=15,format = "yyyy-MM-dd")
	private java.util.Date openTime;
	/**发票号*/
	@Excel(name="发票号",width=15)
	private java.lang.String invoiceSequence;
	
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
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  申请日期
	 */

	@Column(name ="APPLY_TIME",nullable=true,length=32)
	public java.util.Date getApplyTime(){
		return this.applyTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  申请日期
	 */
	public void setApplyTime(java.util.Date applyTime){
		this.applyTime = applyTime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  申请人
	 */

	@Column(name ="APPLY_MAN_NAME",nullable=true,length=32)
	public java.lang.String getApplyManName(){
		return this.applyManName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  申请人
	 */
	public void setApplyManName(java.lang.String applyManName){
		this.applyManName = applyManName;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  供应商公司
	 */

	@Column(name ="PROVIDER_ID",nullable=true,length=32)
	public java.lang.Integer getProviderId(){
		return this.providerId;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  供应商公司
	 */
	public void setProviderId(java.lang.Integer providerId){
		this.providerId = providerId;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  金额
	 */

	@Column(name ="MONEY",nullable=true,length=32)
	public java.lang.Double getMoney(){
		return this.money;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  金额
	 */
	public void setMoney(java.lang.Double money){
		this.money = money;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  投放平台
	 */

	@Column(name ="PLATFORM",nullable=true,length=32)
	public java.lang.Integer getPlatform(){
		return this.platform;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  投放平台
	 */
	public void setPlatform(java.lang.Integer platform){
		this.platform = platform;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  费用发生日期
	 */

	@Column(name ="OCCUR_TIME",nullable=true,length=32)
	public java.util.Date getOccurTime(){
		return this.occurTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  费用发生日期
	 */
	public void setOccurTime(java.util.Date occurTime){
		this.occurTime = occurTime;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  开票日期
	 */

	@Column(name ="OPEN_TIME",nullable=true,length=32)
	public java.util.Date getOpenTime(){
		return this.openTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  开票日期
	 */
	public void setOpenTime(java.util.Date openTime){
		this.openTime = openTime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  发票号
	 */

	@Column(name ="INVOICE_SEQUENCE",nullable=true,length=32)
	public java.lang.String getInvoiceSequence(){
		return this.invoiceSequence;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  发票号
	 */
	public void setInvoiceSequence(java.lang.String invoiceSequence){
		this.invoiceSequence = invoiceSequence;
	}
}
