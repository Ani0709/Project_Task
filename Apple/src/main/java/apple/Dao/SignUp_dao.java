package apple.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dbutils.DbConnection;

import apple.beans.SignUp_beans;

public class SignUp_dao {

	public int userRegistration(SignUp_beans sb) {
		int status=0;
		Connection con= DbConnection.openConnection();
		 PreparedStatement ps= null;
		 //name, email, password signup
		 String insertquery="insert into signup(name, email, password) value(?,?,?)";
		 
		 try {
			 ps=con.prepareStatement(insertquery);
			ps.setString(1, sb.getName());
			ps.setString(2, sb.getEmail());
			ps.setString(3, sb.getPassword());
			status=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
		 
		return status;
		
	}
}
