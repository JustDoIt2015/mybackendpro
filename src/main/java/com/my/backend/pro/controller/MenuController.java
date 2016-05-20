/**
 * 
 */
package com.my.backend.pro.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	Logger log = Logger.getLogger(MenuController.class);
	
	@Autowired
	private MenuService menuService;

	@RequestMapping(value="get")
	public String getMenuTree(Model model) {
		List<MenuEntity> list = menuService.getMenuList();
		model.addAttribute("menu", list);
		return "admin/menu";
	}
	
	@RequestMapping(value="add/id/{id}")
	public String addMenu(@PathVariable int id, Model model, HttpServletRequest request) {
		log.info(id);
		HttpSession session = request.getSession();
		session.setAttribute("add", "true");
		model.addAttribute("id", id);
		return "admin/menuadd";
	}
	
	@RequestMapping(value="addmenu/id/{id}")
	public String addMenuShow(@PathVariable int id, Model model, HttpServletRequest request, MenuEntity menu) {
		HttpSession session = request.getSession();
		if(session.getAttribute("add")!=null) {
			//MenuEntity menu = new MenuEntity();
			model.addAttribute("url", request.getContextPath()+"/menu/get");
			session.removeAttribute("add");
		} else {
			
		}
		return "admin/menuadd";
	}
}
