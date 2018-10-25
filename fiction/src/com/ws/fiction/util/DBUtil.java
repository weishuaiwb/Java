package com.ws.fiction.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;

import org.apache.commons.dbcp2.BasicDataSource;




public class DBUtil {
	
	//���ݿ�����
	private static String driver;
	private static String url;
	private static String user;
	private static String password;
	
	//���ӳ�
	private static BasicDataSource bds;
	private static int initialSize;
	private static int maxTotal;
	private static int maxIdle;
	private static int minIdle;
	private static long maxWaitMills;
	
	
	static{
		init();
	}
	
	//��ʼ������
	public static void init(){
		
		try {
			bds = new BasicDataSource();
			//��ȡ���Զ���
			Properties pro = System.getProperties();
			//����ָ���������ļ�
			pro.load(new FileInputStream("D:/java_env/workspace/fiction/src/jdbc.properties"));
			//��ȡ�����ļ�
			driver = pro.getProperty("driver");
			url = pro.getProperty("url");
			user = pro.getProperty("user");
			password = pro.getProperty("password");
			
			
			//DBCP��������
			initialSize = Integer.parseInt(pro.getProperty("initialSize"));
			maxTotal = Integer.parseInt(pro.getProperty("maxTotal"));
			maxIdle = Integer.parseInt(pro.getProperty("maxIdle"));
			minIdle = Integer.parseInt(pro.getProperty("minIdle"));
			maxWaitMills = Long.parseLong(pro.getProperty("maxWaitMills"));
		
			//��������
			bds.setDriverClassName(driver);
			//����URL
			bds.setUrl(url);
			//�������ݿ���û���
			bds.setUsername(user);
			//�������ݿ������
			bds.setPassword(password);
			
			
			bds.setInitialSize(maxTotal);
			bds.setMaxTotal(maxIdle);
			bds.setMaxIdle(minIdle);
			bds.setMaxWaitMillis(maxWaitMills);
		
		
		
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
	
	//��װ��Դ���յķ���
	public static void close(Connection conn,
		PreparedStatement ps,ResultSet rs){
		try {
			if(conn != null)conn.close();
			if(ps != null)ps.close();
			if(rs != null)rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * ��װ�����ݸ��²���
	 * @param conn ���ݿ�����
	 * @param sql ���²�����sql���
	 * @param obj ����
	 * @return
	 * @throws Exception
	 */
	public static boolean executeUpdate(Connection conn, String sql,Object...obj) throws Exception{
		
		PreparedStatement ps = conn.prepareStatement(sql);
		for(int i=1;i<=obj.length;i++){
			ps.setObject(i, obj[i-1]);
			
		}
		
		int i = ps.executeUpdate();
		conn.close();
		return i>0?true:false;
	}
	
	/**
	 * ��װ��ѯ����
	 * @param call ������Ĵ���
	 * @param sql  ��ѯsql���
	 * @param obj  ����
	 * @return
	 * @throws Exception
	 */
	public static <T> List<T> queryList(CallBack<T> call,String sql,Object...obj) throws Exception{
		Connection conn = getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		for(int i=1;i<=obj.length;i++){
			ps.setObject(i, obj[i-1]);
		}
		ResultSet rs = ps.executeQuery();
//		ps.close();
		return call.findAll(rs);
		
	}
	
	
	//��װ��ȡ���ݿ����ӵķ���
		public static Connection getConnection() throws SQLException{
			if(bds==null||bds.isClosed()){
				init();
			}
			return bds.getConnection();
		}




	/**
	 * ��װ��ѯ����Ԫ�صĲ���
	 * @param call  �Խ�����Ĵ���
	 * @param sql	��ѯsql���
	 * @param obj	����
	 * @return
	 * @throws SQLException
	 */
	public static <T> T queryOne(CallBack<T> call,String sql,Object...obj) throws SQLException{
		Connection conn = getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		for(int i=1;i<=obj.length;i++){
			ps.setObject(i, obj[i-1]);
		}
		ResultSet rs = ps.executeQuery();
		return call.findOne(rs);
	}
	
	
	//���Ӻ���   �ص�����  JDK1.8
	public interface CallBack<T>{
		default List<T> findAll(ResultSet rs){
			return null;
		}
		
		default T findOne(ResultSet rs){
			return null;
		}
	}
	
	//JDK1.8����
//	public static abstract class CallBack<T>{
//		public List<T> getDatas(ResultSet rs){
//			return null;
//		}
//		
//		public T getData(ResultSet rs){
//			return null;
//		}
//	}
	
}
