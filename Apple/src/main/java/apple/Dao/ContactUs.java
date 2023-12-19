package apple.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dbutils.DbConnection;

import apple.beans.ContactUs_beans;



public class ContactUs {
	public int addContact(ContactUs_beans cu) {
		int status=0;
		 Connection con=DbConnection.openConnection();
		 PreparedStatement ps=null;
		 
			  String insertQuery="insert into contactus(Name,Email,Phone,Question,Date) values(?,?,?,?,?)";
			  try {
				
				 ps=con.prepareStatement(insertQuery);
				  ps.setString(1, cu.getName()); 
				  ps.setString(2, cu.getEmail());
				  ps.setString(3, cu.getPhone()); 
				  ps.setString(4, cu.getQuestion());
				  ps.setDate(5, cu.getDate()); 
				  //System.out.println(ps);
				  status=ps.executeUpdate();//to execute the query
				  }
				  
				  catch(SQLException se) {
				  System.out.println(se); 
				  
				  }
				  
				  return status; }
				 
				

			}
