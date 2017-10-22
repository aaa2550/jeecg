package com.jeecg.account.entity;

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
 * @Description: 账户信息
 * @author onlineGenerator
 * @date 2017-10-22 18:57:40
 * @version V1.0   
 *
 */
@Entity
@Table(name = "account", schema = "")
@SuppressWarnings("serial")
public class AccountEntity implements java.io.Serializable {
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
	/**投放平台*/
	@Excel(name="投放平台",width=15,dicCode="platformT")
	private java.lang.Integer platform;
	/**供应商公司*/
	@Excel(name="供应商公司",width=15,dictTable ="provider",dicCode ="id",dicText ="name")
	private java.lang.Integer providerId;
	/**客户公司*/
	@Excel(name="客户公司",width=15,dictTable ="consumer",dicCode ="id",dicText ="name")
	private java.lang.Integer consumerId;
	/**APPID*/
	@Excel(name="APPID",width=15)
	private java.lang.String appId;
	/**APP名称*/
	@Excel(name="APP名称",width=15)
	private java.lang.String appName;
	/**账户ID*/
	@Excel(name="账户ID",width=15)
	private java.lang.String accountId;
	/**账户名称*/
	@Excel(name="账户名称",width=15)
	private java.lang.String accountName;
	/**QQ*/
	@Excel(name="QQ",width=15)
	private java.lang.String qq;
	/**行业*/
	@Excel(name="行业",width=15)
	private java.lang.String industry;
	/**推广链接*/
	@Excel(name="推广链接",width=15)
	private java.lang.String generalizeLink;
	/**申请时间*/
	@Excel(name="申请时间",width=15,format = "yyyy-MM-dd")
	private java.util.Date applyTime;
	/**申请人名称*/
	@Excel(name="申请人名称",width=15)
	private java.lang.String applyManName;
	/**通过日期*/
	@Excel(name="通过日期",width=15,format = "yyyy-MM-dd")
	private java.util.Date passTime;
	/**渠道*/
	@Excel(name="渠道",width=15,dicCode="channelT")
	private java.lang.String channel;
	
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
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  客户公司
	 */

	@Column(name ="CONSUMER_ID",nullable=true,length=32)
	public java.lang.Integer getConsumerId(){
		return this.consumerId;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  客户公司
	 */
	public void setConsumerId(java.lang.Integer consumerId){
		this.consumerId = consumerId;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  APPID
	 */

	@Column(name ="APP_ID",nullable=true,length=32)
	public java.lang.String getAppId(){
		return this.appId;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  APPID
	 */
	public void setAppId(java.lang.String appId){
		this.appId = appId;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  APP名称
	 */

	@Column(name ="APP_NAME",nullable=true,length=32)
	public java.lang.String getAppName(){
		return this.appName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  APP名称
	 */
	public void setAppName(java.lang.String appName){
		this.appName = appName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  账户ID
	 */

	@Column(name ="ACCOUNT_ID",nullable=true,length=32)
	public java.lang.String getAccountId(){
		return this.accountId;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  账户ID
	 */
	public void setAccountId(java.lang.String accountId){
		this.accountId = accountId;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  账户名称
	 */

	@Column(name ="ACCOUNT_NAME",nullable=true,length=32)
	public java.lang.String getAccountName(){
		return this.accountName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  账户名称
	 */
	public void setAccountName(java.lang.String accountName){
		this.accountName = accountName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  QQ
	 */

	@Column(name ="QQ",nullable=true,length=32)
	public java.lang.String getQq(){
		return this.qq;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  QQ
	 */
	public void setQq(java.lang.String qq){
		this.qq = qq;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  行业
	 */

	@Column(name ="INDUSTRY",nullable=true,length=32)
	public java.lang.String getIndustry(){
		return this.industry;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  行业
	 */
	public void setIndustry(java.lang.String industry){
		this.industry = industry;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  推广链接
	 */

	@Column(name ="GENERALIZE_LINK",nullable=true,length=32)
	public java.lang.String getGeneralizeLink(){
		return this.generalizeLink;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  推广链接
	 */
	public void setGeneralizeLink(java.lang.String generalizeLink){
		this.generalizeLink = generalizeLink;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  申请时间
	 */

	@Column(name ="APPLY_TIME",nullable=true,length=32)
	public java.util.Date getApplyTime(){
		return this.applyTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  申请时间
	 */
	public void setApplyTime(java.util.Date applyTime){
		this.applyTime = applyTime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  申请人名称
	 */

	@Column(name ="APPLY_MAN_NAME",nullable=true,length=32)
	public java.lang.String getApplyManName(){
		return this.applyManName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  申请人名称
	 */
	public void setApplyManName(java.lang.String applyManName){
		this.applyManName = applyManName;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  通过日期
	 */

	@Column(name ="PASS_TIME",nullable=true,length=32)
	public java.util.Date getPassTime(){
		return this.passTime;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  通过日期
	 */
	public void setPassTime(java.util.Date passTime){
		this.passTime = passTime;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  渠道
	 */

	@Column(name ="CHANNEL",nullable=true,length=32)
	public java.lang.String getChannel(){
		return this.channel;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  渠道
	 */
	public void setChannel(java.lang.String channel){
		this.channel = channel;
	}
}
