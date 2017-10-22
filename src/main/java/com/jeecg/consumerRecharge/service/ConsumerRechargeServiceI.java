package com.jeecg.consumerRecharge.service;
import com.jeecg.consumerRecharge.entity.ConsumerRechargeEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface ConsumerRechargeServiceI extends CommonService{
	
 	public void delete(ConsumerRechargeEntity entity) throws Exception;
 	
 	public Serializable save(ConsumerRechargeEntity entity) throws Exception;
 	
 	public void saveOrUpdate(ConsumerRechargeEntity entity) throws Exception;
 	
}
