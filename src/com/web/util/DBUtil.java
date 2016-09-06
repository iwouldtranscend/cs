package com.web.util;



import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;





public class DBUtil {
	private static String DRIVERCLASS;
	
	private static String URL;
	
	private static String USER;
	
	private static String PASSWORD;
	/**
	 * 静态初始化块
	 */
	public static void link(){
		Properties p = new Properties();
		InputStream in  = null;
		try {
			in = DBUtil.class.getResourceAsStream("/com/web/util/db.properties");
			p.load(in);
			DRIVERCLASS = p.getProperty("driverclass");
			URL = p.getProperty("url");
			USER = p.getProperty("user");
			PASSWORD = p.getProperty("password");
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 连接数据库
	 * @return
	 */
	public static Connection getConnection(){
		link();
		Connection on =null;
		try {
			Class.forName(DRIVERCLASS);
			on = DriverManager.getConnection(URL,USER,PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return on;
	}
	/**
	 * 增删改
	 * @param sql
	 * @param params
	 * @return
	 */
	public static boolean executeDML(String sql,Object[] ob){
		
		Connection on = null;
		PreparedStatement ps = null;
		boolean b = false;
		try {	
			on = DBUtil.getConnection();
			ps = on.prepareStatement(sql);
			if(null != ob&&ob.length>0 ){
				for(int i=0;i<ob.length;i++){
					ps.setObject((i+1), ob[i]);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(ps != null) ps.close();
				if(on != null) on.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return b;
	}
	/**
	 * DML执行方法
	 */
	public static List<Object[]>  executeDQL(String sql,Object[] ob){
		Connection on = null;
		PreparedStatement ps=null;
		ResultSet rs = null;
		List<Object[]> list = new ArrayList<Object[]>();
		try {
			on = DBUtil.getConnection();
			ps=on.prepareStatement(sql);
			if(null !=ob&&ob.length>0){
				for(int i=0;i<ob.length;i++){
					ps.setObject((i+1), ob[i]);
				}
				
			}
			rs = ps.executeQuery();
			/**
			 * 获取结果的列数
			 */
			int columnCount = rs.getMetaData().getColumnCount();
			Object[] os = null;
			while(rs.next()){
				os = new Object[columnCount];
				for(int i=0;i<columnCount;i++){
					os[i] = rs.getObject(i+1);
				}
				list.add(os);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(on != null) on.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return list;
	}
}
