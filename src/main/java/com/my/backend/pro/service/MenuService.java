/**
 * 
 */
package com.my.backend.pro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.backend.pro.dao.impl.MenuDao;
import com.my.backend.pro.po.MenuEntity;

/**
 *
 * @project mybackendpro
 * <p>title:MenuSevice.java</p>
 * <p>description:</p>
 * @author Qingmao
 * @date 上午11:48:37
 * @version 1.0
 *
 */
@Service
public interface MenuService {
	
	
	public List<MenuEntity> getMenuList();
}
