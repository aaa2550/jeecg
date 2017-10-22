package com.jeecg.provider.service;
import com.jeecg.provider.entity.ProviderEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface ProviderServiceI extends CommonService{
	
 	public void delete(ProviderEntity entity) throws Exception;
 	
 	public Serializable save(ProviderEntity entity) throws Exception;
 	
 	public void saveOrUpdate(ProviderEntity entity) throws Exception;
 	
}
