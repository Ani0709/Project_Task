package com.dbutils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	private static Connection con;
	public static Connection openConnection(){
		 try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/apple","root","root");
		 }
		 catch(ClassNotFoundException| SQLException se) {
			 System.out.println(se);
		 }
		return con;
		
	}
}
