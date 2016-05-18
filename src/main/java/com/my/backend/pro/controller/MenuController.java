/**
 * 
 */
package com.my.backend.pro.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.backend.pro.po.MenuEntity;
import com.my.backend.pro.service.MenuService;

/**
 *
 * @project mybackendpro
 * <p>title:MenuController.java</p>
 * <p>description:</p>
 * @author Qingmao
 * @date 上午9:24:05
 * @version 1.0
 *
 */
@Controller
@RequestMapping(value="/menu")
public class MenuController {
	
	@Autowired
	private MenuService menuService;

	@RequestMapping(value="get")
	public String getMenuTree(Model model) {
		List<MenuEntity> list = menuService.getMenuList();
		model.addAttribute("menu", list);
		return "admin/menu";
	}
}
