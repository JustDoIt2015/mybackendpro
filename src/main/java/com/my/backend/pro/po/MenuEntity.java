/**
 * 
 */
package com.my.backend.pro.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 *
 * @project mybackendpro
 *          <p>
 *          title:MenuEntity.java
 *          </p>
 *          <p>
 *          description:
 *          </p>
 * @author Qingmao
 * @date 上午9:49:30
 * @version 1.0
 *
 */
@Entity
@Table(name = "sys_permission")
@Cache(usage = CacheConcurrencyStrategy.READ_ONLY, region="javaClassName")
public class MenuEntity {

	private int id;
	private String name;
	private String type;
	private String url;
	private String percode;
	private String parentid;
	private String parentids;
	private String sort;
	private String available;
	
	@Id
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column
	public String getUrl() {
		return url;
	}

	
	public void setUrl(String url) {
		this.url = url;
	}

	@Column
	public String getPercode() {
		return percode;
	}

	
	public void setPercode(String percode) {
		this.percode = percode;
	}

	@Column
	public String getParentid() {
		return parentid;
	}

	
	public void setParentid(String parentid) {
		this.parentid = parentid;
	}

	@Column
	public String getParentids() {
		return parentids;
	}

	
	public void setParentids(String parentids) {
		this.parentids = parentids;
	}

	@Column
	public String getSort() {
		return sort;
	}

	
	public void setSort(String sort) {
		this.sort = sort;
	}

	@Column
	public String getAvailable() {
		return available;
	}

	
	public void setAvailable(String available) {
		this.available = available;
	}
}
