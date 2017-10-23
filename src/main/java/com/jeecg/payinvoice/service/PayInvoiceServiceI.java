package com.jeecg.payinvoice.service;
import com.jeecg.payinvoice.entity.PayInvoiceEntity;
import org.jeecgframework.core.common.service.CommonService;

import java.io.Serializable;

public interface PayInvoiceServiceI extends CommonService{
	
 	public void delete(PayInvoiceEntity entity) throws Exception;
 	
 	public Serializable save(PayInvoiceEntity entity) throws Exception;
 	
 	public void saveOrUpdate(PayInvoiceEntity entity) throws Exception;
 	
}
