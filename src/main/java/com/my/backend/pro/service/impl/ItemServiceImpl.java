package com.my.backend.pro.service.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.my.backend.pro.po.Items;
import com.my.backend.pro.po.QueryVo;
import com.my.backend.pro.service.ItemService;

@Component
public class ItemServiceImpl implements ItemService {
	

	public List<Items> findItemsList(QueryVo queryVo) throws Exception {
		//查询商品信息
		return null;
	}

	public Items findItemById(int id) throws Exception {
		
		
		return null;
	}

	public void saveItem(Items items) throws Exception {
		
		
		
	}

}
