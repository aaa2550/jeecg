package com.jeecg.ccc.service;
import com.jeecg.ccc.entity.CccEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface CccServiceI extends CommonService{
	
 	public void delete(CccEntity entity) throws Exception;
 	
 	public Serializable save(CccEntity entity) throws Exception;
 	
 	public void saveOrUpdate(CccEntity entity) throws Exception;
 	
}
