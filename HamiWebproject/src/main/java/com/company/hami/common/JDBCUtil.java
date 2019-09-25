package com.company.hami.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBCUtil {
	//H2 DB ����
	static final String driver="org.h2.Driver";
	static final String url="jdbc:h2:tcp://localhost/~/test";
	
	//DB ���ᰴü ����� �޼ҵ�
	public static Connection getConnection() throws Exception{
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,"sa","");
			return con;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//select �۾� ����� �ڿ� ������Ű�� �޼ҵ�
	public static void close(ResultSet rs, Connection con, PreparedStatement stmt) {
		if(rs!=null) {
			try {
				if(!rs.isClosed()) { //resultset�� closed���� �ʾҴٸ�
					rs.close();//rs�� close���Ѷ�
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				rs = null;
				
			}
		}//resultset
		
		if(stmt!=null) {
			try {
				if(!stmt.isClosed()) {
					stmt.close();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				stmt = null;
				
			}
		}//preparedstatement
		
		if(con!=null) {
			try {
				if(!con.isClosed()) {
					con.close();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				con = null;
				
			}
		}//connection
		
	}
	
	
	//DML �۾� ����� �ڿ� ������Ű�� �޼ҵ�
	
	public static void close(Connection con, PreparedStatement stmt) {
		if(stmt!=null) {
			try {
				if(!stmt.isClosed()) { //resultset�� closed���� �ʾҴٸ�
					stmt.close();//rs�� close���Ѷ�
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				stmt = null;
				
			}
		}//preparedstatement
		
		if(con!=null) {
			try {
				if(!con.isClosed()) {
					con.close();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				con = null;
				
			}
		}//connection
	}
	
	
}
