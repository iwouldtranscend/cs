package com.web.model.impl;

import java.util.List;

import com.web.dao.UserDao;
import com.web.dao.impl.UserDaoImpl;
import com.web.entity.Menu;
import com.web.entity.User;
import com.web.model.UserModel;
import com.web.util.DBUtil;

public class UserModelImpl implements UserModel{
	//模型层持有一个DAO层对象
	private UserDao userDao = new UserDaoImpl();
	
	/**
	 * 通过用户名加载一个用户对象（登录）
	 * @param userName 用户输入的帐号
	 * @return 返回null表示用户的帐号不存在 
	 */
	public User loadUserByName(String yname){
		System.out.print("UserModelMySQLImpl模型==>");
		return userDao.loadUserByName(yname);
	}
	/**
	 * 通过登录的账号的id加载次用拥有的菜单集合
	 * @param uid
	 * @param UserDao 
	 * @return
	 */
	@Override
	public List<Menu> loadMenusByUid(int uid) {
		
		return userDao.loadMenusByUid(uid);
	}

	public List<User> loadAllUsers(){
		
		return userDao.loadAllUsers();
	}
	

}

