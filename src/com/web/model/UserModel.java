package com.web.model;

import java.util.List;

import com.web.entity.Menu;
import com.web.entity.User;

public interface UserModel {
	/**
	 *用户名获取一个用户对象
	 * @param
	 * @return 
	 */
	public User loadUserByName(String yname);
	
	/**
	 * 返回一个菜单集合
	 */
	public List<Menu> loadMenusByUid(int uid);
	

	/**
	 * 加载所有用户-->查询用户
	 * @return
	 */
	public List<User> loadAllUsers();

	
}
