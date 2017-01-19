package com.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.demo.model.ProductBean;
import com.demo.model.UserBean;

public class UserDAO {
	Connection con;
	String sql;
	PreparedStatement ps; 
	public UserDAO(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dec2016","root","littlehearts");
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public String validateUser(UserBean user){
		String x="";
		try{
			sql = "SELECT * FROM user WHERE username = ? AND password = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1,user.getUsername());
			ps.setString(2,user.getPassword());
			ResultSet rs;
			rs = ps.executeQuery();
			//HttpServletRequest request;
			//HttpSession session=request.getSession(true);
            if(rs.next()) {
               x = rs.getString(1);
            } 
			}catch(Exception e){
			e.printStackTrace();
		}
		return x;
	}
	public ArrayList<ProductBean> loadData(){
		
		ArrayList<ProductBean> rows = new ArrayList<ProductBean>();
		try{
			sql = "Select * FROM Product";
			ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				ProductBean product = new ProductBean();
				product.setProductId(rs.getInt(1));
				product.setProductName(rs.getString(2));
				product.setDesc(rs.getString(3));
				product.setPrice(rs.getInt(4));
				product.setCategoryId(rs.getInt(5));
				product.setIcon(rs.getString(6));
				rows.add(product);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return rows;
		
	}
}
