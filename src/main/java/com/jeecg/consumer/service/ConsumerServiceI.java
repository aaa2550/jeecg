package com.jeecg.consumer.service;
import com.jeecg.consumer.entity.ConsumerEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface ConsumerServiceI extends CommonService{
	
 	public void delete(ConsumerEntity entity) throws Exception;
 	
 	public Serializable save(ConsumerEntity entity) throws Exception;
 	
 	public void saveOrUpdate(ConsumerEntity entity) throws Exception;
 	
}
