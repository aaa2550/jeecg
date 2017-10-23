package com.jeecg.consumercontract.service;
import com.jeecg.consumercontract.entity.ConsumerContractEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface ConsumerContractServiceI extends CommonService{
	
 	public void delete(ConsumerContractEntity entity) throws Exception;
 	
 	public Serializable save(ConsumerContractEntity entity) throws Exception;
 	
 	public void saveOrUpdate(ConsumerContractEntity entity) throws Exception;
 	
}
