package com.web.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import com.web.entity.Menu;
import com.web.entity.User;
import com.web.model.UserModel;
import com.web.model.impl.UserModelImpl;

public class MainServlet extends HttpServlet {

	
	//控制层持有模型对象
	private UserModel userModel = new UserModelImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String methodName = req.getParameter("methodName");
		System.out.println(methodName);
		Class c = MainServlet.class;
		Method m = null;
		try {
			m = c.getMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
			m.invoke(this, req,resp);
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 登录方法
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void login(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("进入");
		
		//取表单数据
		String yname = req.getParameter("yname");
		String ypass = req.getParameter("ypass");
		System.out.println(ypass);
		//查询数据库
		System.out.print("LoginServlet控制层==>");
		User user = userModel.loadUserByName(yname);
		System.out.println(yname);
		//利用上面的查询判断，并给出不同提示
		if(null != user){
			System.out.println("账号正确");
			//账号正确
			if(ypass.equals(user.getYpass())){
				//密码正确
				//保存数据到整个项目
				List<Menu> menuList = userModel.loadMenusByUid(user.getUid());	
				Menu m = menuList.get(0);
				req.getSession().setAttribute("loginUser", user);
				req.getSession().setAttribute("menuList", menuList);
				req.getRequestDispatcher("view/Welcome.jsp").forward(req, resp);
			}else{
				//密码错了,给出提示，跳转页面到登录页面
				req.setAttribute("error", "密码错误！");
				req.getRequestDispatcher("view/login.jsp").forward(req, resp);
			}
		}else{
			//账号不存在
			req.setAttribute("error", "账号不存在！");
			req.getRequestDispatcher("view/login.jsp").forward(req, resp);
		}
	}
	
	/**
	 * 退出
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void logout(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getSession().invalidate();
		resp.sendRedirect("view/login.jsp");
	}
	
	
	
	



//		/**
//		 *  展示部门
//		 * @param req
//		 * @param resp
//		 * @throws ServletException
//		 * @throws IOException
//		 */
//		public void ShowBuMen(HttpServletRequest req, HttpServletResponse resp)
//				throws ServletException, IOException {
//			System.out.println("测试是否执行ShowBuMen");
//			List<Bumen> bumenList = userModel.ShowBuMen();
//////		req.setAttribute("bumenList", bumenList);
//////			req.getRequestDispatcher("view/showBuMen.jsp").forward(req, resp);
//			String json = JSONArray.fromObject(bumenList).toString();
//			resp.setCharacterEncoding("utf-8");
//			resp.getWriter().write(json);
//			resp.getWriter().flush();
//		}


	/**
	 * 展示用户
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void showUser(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<User> userList = userModel.loadAllUsers();
		String json = JSONArray.fromObject(userList).toString();
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(json);
		resp.getWriter().flush();
	}
	
}


