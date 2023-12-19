package apple.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dbutils.DbConnection;

import apple.beans.Login_beans;

public class LoginDao {

	public Login_beans Loginpage(String id, String password) {
		int status =0;
		Connection con= DbConnection.openConnection();
		 PreparedStatement ps= null;
		 ResultSet rs= null;
		 Login_beans lr=null;
		 String selectQuery="select * from signup where email=? and password=";
	try {
		ps=con.prepareStatement(selectQuery);
		ps.setString(1, "txtemail");
		ps.setString(2, "txtpass");
		rs=ps.executeQuery();
		
		if(rs.next()==true) {
		 lr = new Login_beans();
			
			String ids =rs.getString("txtemail");
			String pass=rs.getString("txtpass");
			
			lr.setEmail(ids);
			lr.setPassword(pass);
		}
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
		 return lr;
		
	}
}
