package com.jeecg.consumerRecharge.entity;

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
 * @Description: 客户充值信息
 * @author onlineGenerator
 * @date 2017-10-22 19:18:55
 * @version V1.0   
 *
 */
@Entity
@Table(name = "consumer_recharge", schema = "")
@SuppressWarnings("serial")
public class ConsumerRechargeEntity implements java.io.Serializable {
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
	/**账户ID*/
	@Excel(name="账户ID",width=15,dictTable ="account",dicCode ="id",dicText ="account_id")
	private java.lang.Integer accountId;
	/**我方返点*/
	@Excel(name="我方返点",width=15)
	private java.lang.Double ourRebates;
	/**对方返点*/
	@Excel(name="对方返点",width=15)
	private java.lang.Double oppositePartyRebates;
	/**账面充值*/
	@Excel(name="账面充值",width=15)
	private java.lang.Double paperRecharge;
	/**返点充值*/
	@Excel(name="返点充值",width=15)
	private java.lang.Double rebatesRecharge;
	/**充值成本*/
	@Excel(name="充值成本",width=15)
	private java.lang.Double rechargeCost;
	
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
	 *@return: java.lang.Integer  账户ID
	 */

	@Column(name ="ACCOUNT_ID",nullable=true,length=32)
	public java.lang.Integer getAccountId(){
		return this.accountId;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  账户ID
	 */
	public void setAccountId(java.lang.Integer accountId){
		this.accountId = accountId;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  我方返点
	 */

	@Column(name ="OUR_REBATES",nullable=true,length=32)
	public java.lang.Double getOurRebates(){
		return this.ourRebates;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  我方返点
	 */
	public void setOurRebates(java.lang.Double ourRebates){
		this.ourRebates = ourRebates;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  对方返点
	 */

	@Column(name ="OPPOSITE_PARTY_REBATES",nullable=true,length=32)
	public java.lang.Double getOppositePartyRebates(){
		return this.oppositePartyRebates;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  对方返点
	 */
	public void setOppositePartyRebates(java.lang.Double oppositePartyRebates){
		this.oppositePartyRebates = oppositePartyRebates;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  账面充值
	 */

	@Column(name ="PAPER_RECHARGE",nullable=true,length=32)
	public java.lang.Double getPaperRecharge(){
		return this.paperRecharge;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  账面充值
	 */
	public void setPaperRecharge(java.lang.Double paperRecharge){
		this.paperRecharge = paperRecharge;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  返点充值
	 */

	@Column(name ="REBATES_RECHARGE",nullable=true,length=32)
	public java.lang.Double getRebatesRecharge(){
		return this.rebatesRecharge;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  返点充值
	 */
	public void setRebatesRecharge(java.lang.Double rebatesRecharge){
		this.rebatesRecharge = rebatesRecharge;
	}
	/**
	 *方法: 取得java.lang.Double
	 *@return: java.lang.Double  充值成本
	 */

	@Column(name ="RECHARGE_COST",nullable=true,length=32)
	public java.lang.Double getRechargeCost(){
		return this.rechargeCost;
	}

	/**
	 *方法: 设置java.lang.Double
	 *@param: java.lang.Double  充值成本
	 */
	public void setRechargeCost(java.lang.Double rechargeCost){
		this.rechargeCost = rechargeCost;
	}
}
