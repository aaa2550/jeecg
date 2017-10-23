package com.jeecg.sellinvoice.service;
import com.jeecg.sellinvoice.entity.SellInvoiceEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface SellInvoiceServiceI extends CommonService{
	
 	public void delete(SellInvoiceEntity entity) throws Exception;
 	
 	public Serializable save(SellInvoiceEntity entity) throws Exception;
 	
 	public void saveOrUpdate(SellInvoiceEntity entity) throws Exception;
 	
}
