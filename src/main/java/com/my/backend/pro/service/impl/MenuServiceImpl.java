/**
 * 
 */
package com.my.backend.pro.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.backend.pro.dao.impl.MenuDao;
import com.my.backend.pro.po.MenuEntity;
import com.my.backend.pro.service.MenuService;

/**
 *
 * @project mybackendpro
 * <p>title:MenuServiceImpl.java</p>
 * <p>description:</p>
 * @author Qingmao
 * @date 上午11:52:07
 * @version 1.0
 *
 */
@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	private MenuDao dao;

	/* (non-Javadoc)
	 * @see com.my.backend.pro.service.MenuService#getMenuList()
	 */
	public List<MenuEntity> getMenuList() {
		// TODO Auto-generated method stub
		return dao.getAllList();
	}

}
