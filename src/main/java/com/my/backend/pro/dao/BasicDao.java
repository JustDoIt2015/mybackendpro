/**
 * 
 */
package com.my.backend.pro.dao;

import java.util.List;

import org.springframework.stereotype.Component;

/**
 *
 * @project mybackendpro
 * <p>title:BasicDao.java</p>
 * <p>description:</p>
 * @author Qingmao
 * @date 上午9:59:37
 * @version 1.0
 *
 */
@Component
public interface BasicDao<T> {

	
	public T get(int id);
	
	public void delete(int id);
	
	public int update(T t);
	
	public int add(T t);
	
	public List<T> getAllList();
}
