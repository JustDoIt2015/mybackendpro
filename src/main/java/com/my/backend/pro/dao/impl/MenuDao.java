/**
 * 
 */
package com.my.backend.pro.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.my.backend.pro.dao.BasicDao;
import com.my.backend.pro.po.MenuEntity;

/**
 *
 * @project mybackendpro
 * <p>title:MenuDao.java</p>
 * <p>description:</p>
 * @author Qingmao
 * @date 上午11:30:29
 * @version 1.0
 *
 */
@Repository
public class MenuDao implements BasicDao<MenuEntity> {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;

	/* (non-Javadoc)
	 * @see com.my.backend.pro.dao.BasicDao#get(int)
	 */
	public MenuEntity get(int id) {
		// TODO Auto-generated method stub
		Session session = null;
		MenuEntity m = null;
		try{
			session = sessionFactory.openSession();
			m = session.get(MenuEntity.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return m;
		
	}

	/* (non-Javadoc)
	 * @see com.my.backend.pro.dao.BasicDao#delete(int)
	 */
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	/* (non-Javadoc)
	 * @see com.my.backend.pro.dao.BasicDao#update(java.lang.Object)
	 */
	public int update(MenuEntity menu) {
		// TODO Auto-generated method stub
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.my.backend.pro.dao.BasicDao#add(java.lang.Object)
	 */
	public int add(MenuEntity menu) {
		// TODO Auto-generated method stub
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.my.backend.pro.dao.BasicDao#getAllList()
	 */
	public List<MenuEntity> getAllList() {
		// TODO Auto-generated method stub
		Session session = null;
		List<MenuEntity> list = null;
		try{
			session = sessionFactory.openSession();
			list = session.createQuery("from MenuEntity").list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

}
