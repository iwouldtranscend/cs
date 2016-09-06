package com.web.dao;

import java.util.List;

import com.web.entity.Menu;
import com.web.entity.User;

public interface UserDao {
	
	/**
	 * （登录）
	 * @param userName 输入帐号
	 * @return 
	 */
	public User loadUserByName(String userName);
	/**
	 * 通过登录的账号的id加载次用拥有的菜单集合
	 * @param uid
	 * @return
	 */
	public List<Menu> loadMenusByUid(int mid);

	/**
	 * 加载所有用户-->查询用户
	 * @return
	 */
	public List<User> loadAllUsers();
	
}
