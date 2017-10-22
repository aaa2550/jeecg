package com.jeecg.account.service;
import com.jeecg.account.entity.AccountEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface AccountServiceI extends CommonService{
	
 	public void delete(AccountEntity entity) throws Exception;
 	
 	public Serializable save(AccountEntity entity) throws Exception;
 	
 	public void saveOrUpdate(AccountEntity entity) throws Exception;
 	
}
