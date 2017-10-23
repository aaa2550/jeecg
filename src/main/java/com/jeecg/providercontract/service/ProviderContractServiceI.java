package com.jeecg.providercontract.service;
import com.jeecg.providercontract.entity.ProviderContractEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface ProviderContractServiceI extends CommonService{
	
 	public void delete(ProviderContractEntity entity) throws Exception;
 	
 	public Serializable save(ProviderContractEntity entity) throws Exception;
 	
 	public void saveOrUpdate(ProviderContractEntity entity) throws Exception;
 	
}
