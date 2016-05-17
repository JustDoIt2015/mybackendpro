package com.my.backend.pro.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.my.backend.pro.po.Items;
import com.my.backend.pro.po.QueryVo;

@Component
public interface ItemService {
	
	//商品查询列表
	public List<Items> findItemsList(QueryVo queryVo)throws Exception;
	
	//根据id查询商品信息
	public Items findItemById(int id) throws Exception;
	
	//修改商品信息
	public void saveItem(Items items)throws Exception;
}
