package com.jeecg.mediainfo.service;
import com.jeecg.mediainfo.entity.MediaInfoEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface MediaInfoServiceI extends CommonService{
	
 	public void delete(MediaInfoEntity entity) throws Exception;
 	
 	public Serializable save(MediaInfoEntity entity) throws Exception;
 	
 	public void saveOrUpdate(MediaInfoEntity entity) throws Exception;
 	
}
