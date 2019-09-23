package org.Dao;

import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RegisterDao {
	
	String sql="insert into register values(?,?,?,?)";
	String url="jdbc:mysql://localhost:3306/gl4";
	String username="root";
	String password="mysql";
	public boolean check(String name,String pass,String email,String contact){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, name);
		st.setString(2, pass);
		st.setString(3, email);
		st.setString(4, contact);
		int i=st.executeUpdate();
		if(i>0){
			return true;
		}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return false;
	}

}
