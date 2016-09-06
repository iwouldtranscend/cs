package com.web.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.web.dao.UserDao;
import com.web.entity.Menu;
import com.web.entity.User;
import com.web.util.DBUtil;

public class UserDaoImpl implements UserDao{

	/**
	 * （登录）
	 * @param 
	 * @return  
	 */
	public User loadUserByName(String yname){
		System.out.println("进入模型层");
		
		String sql = "select * from staff where yname=?";
		List<Object[]> list = DBUtil.executeDQL(sql, new Object[]{yname});
		User user = null;
		if(null != list && list.size() > 0){
			Object[] ob = list.get(0);
			user = new User((Integer)ob[0],String.valueOf(ob[1]), String.valueOf(ob[2]), String.valueOf(ob[3]));
		}
		return user;
	}
	
	/**
	 *展示角色拥有的菜单
	 */

	@Override
	public List<Menu> loadMenusByUid(int uid) {
		
		String sql = "select m.* from sm s,rmu u,menu m where s.jid=u.jid and u.mid = m.mid and isshow=1 and s.jid=?";
		List<Object[]> list = DBUtil.executeDQL(sql, new Object[]{uid});
		List<Menu> menuList = new ArrayList<Menu>();
			for(Object[] ob : list){
				Menu  m=new Menu((Integer)ob[0], String.valueOf(ob[1]),String.valueOf(ob[2]), (Integer)ob[3], (Integer)ob[4], (Integer)ob[5]);
				menuList.add(m);
			}
		
		return menuList;
	}
	
	/**
	 * 查看用户列表
	 */
	public List<User> loadAllUsers(){
		String sql="select * from staff";
		List<Object[]> list = DBUtil.executeDQL(sql,null);
		List<User> userList = new ArrayList<User>();
			for(Object[] ob: list){
				User u=new User((Integer)ob[0], String.valueOf(ob[1]),String.valueOf(ob[2]),String.valueOf(ob[3]));
				userList.add(u);
			}
			return userList;
		
	}
	/**
	 * 查看用户拥有的菜单集合
	 * 
	 */

	
}
