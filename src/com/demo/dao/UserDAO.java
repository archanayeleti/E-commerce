package com.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

<<<<<<< HEAD
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

=======
>>>>>>> 551d890d952b67a2473d96c9af3f7a9f2fcfd383
import com.demo.model.UserBean;

public class UserDAO {
	Connection con;
	public UserDAO(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
<<<<<<< HEAD
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dec2016","root","Archana@12");
=======
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dec2016","root","Hardikritha1!");
>>>>>>> 551d890d952b67a2473d96c9af3f7a9f2fcfd383
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public int validateUser(UserBean user){
		int x =0;
		try{
			String sql = "SELECT * FROM user WHERE username = ? AND password = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,user.getUsername());
			ps.setString(2,user.getPassword());
			ResultSet rs;
			rs = ps.executeQuery();
<<<<<<< HEAD
			HttpServletRequest request;
			HttpSession session=request.getSession(true);
=======
>>>>>>> 551d890d952b67a2473d96c9af3f7a9f2fcfd383
            if(rs.next()) {
               x = 1;
            } 
			}catch(Exception e){
			e.printStackTrace();
		}
		return x;
	}
}
