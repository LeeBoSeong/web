package com.web.common;

import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBCon {
	private static final String URL = "jdbc:mariadb://localhost:3306/kd"; //집: 3306 , 학교:3307
	private static final String DRIVER_NAME= "org.mariadb.jdbc.Driver";
	private static final String USER = "root";
	private static final String PASSWORD = "ll09130731";// 집:ll09130731, 학교: kd1824java
	
	static {
		try {
			Class.forName(DRIVER_NAME);
			System.out.println("나 나오면 뭐 드아이브는 찾은겨");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
		
	}
	public static Connection getCon() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(URL,USER,PASSWORD);
			System.out.println("나 나오면 뭐 커넥샨 된겨");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	public static void main(String[] args) {
		
	}
}
	