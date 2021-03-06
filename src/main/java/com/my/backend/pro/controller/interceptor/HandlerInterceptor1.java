package com.my.backend.pro.controller.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class HandlerInterceptor1 implements HandlerInterceptor {

	//在进入controller方法之前执行
	//使用场景：比如身份认证校验拦截，用户权限拦截，如果拦截不放行，controller方法不再执行
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object handler) throws Exception {
		
		System.out.println("HandlerInterceptor1...preHandle");
		//return true表示放行，否则 不放行
		return false;
	}
	
	//进入controller方法返回视图之前 
	//使用场景：可以向ModelAndView中填充一些公用数据,比如：页面导航
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		System.out.println("HandlerInterceptor1...postHandle");
		
	}
	//controller方法执行完成后
	//使用场景：统一记录系统日志 ，完成执行性能监控。。
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		System.out.println("HandlerInterceptor1...afterCompletion");
		
	}


}
