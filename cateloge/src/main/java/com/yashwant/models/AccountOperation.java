package com.yashwant.models;
import java.sql.*;
import java.util.ArrayList;

import org.springframework.stereotype.Service;


@Service
public class AccountOperation {
	
	public String addNewAccount(Account ac) 
	{
		String status="";
		Connection con;
		PreparedStatement pst;
		
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://b778m35afj0hm3pmhpou-mysql.services.clever-cloud.com:3306/b778m35afj0hm3pmhpou?user=uuphcvlz6eijcak1&password=2eDCMXWnjGW6w5S9WYTW");
				pst=con.prepareStatement("insert into spiderweb values(?,?,?,?)");
				pst.setString(1,ac.getName());
				pst.setString(2,ac.getEmail());
				pst.setString(3,ac.getPassword());
				pst.setString(4, "user");
				pst.executeUpdate();
				con.close();
				status="Success";
		}
		catch(Exception e){
			status="Error";
		}
		return status;
	}
	
	public String AddCompany(Companies compni) {
		String statu="";
		Connection con;
		PreparedStatement pst;
		
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://b778m35afj0hm3pmhpou-mysql.services.clever-cloud.com:3306/b778m35afj0hm3pmhpou?user=uuphcvlz6eijcak1&password=2eDCMXWnjGW6w5S9WYTW");
				pst=con.prepareStatement("insert into companies values(?,?,?,?,?,?,?)");
				pst.setString(1, compni.getId());
				pst.setString(2, compni.getCompanynm());
				pst.setString(3, compni.getCategory());
				pst.setInt(4, compni.getEmployees());
				pst.setString(5, compni.getCountry());
				pst.setString(6, compni.getCeo());
				pst.setString(7, compni.getYear());
				pst.executeUpdate();
				con.close();
				statu="Success";
		}
		catch(Exception e){
			statu="Error";
		}
		return statu;
	}
	
	public String updateCompany(Companies comp) {
		String st="";
		Connection con;
		PreparedStatement pst;
		
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://b778m35afj0hm3pmhpou-mysql.services.clever-cloud.com:3306/b778m35afj0hm3pmhpou?user=uuphcvlz6eijcak1&password=2eDCMXWnjGW6w5S9WYTW");
				pst=con.prepareStatement("update companies set companynm=?,employees=?,country=?,ceo=? where id=?");
				
				pst.setString(1, comp.getCompanynm());
				pst.setInt(2, comp.getEmployees());
				pst.setString(3, comp.getCountry());
				pst.setString(4, comp.getCeo());
				pst.setString(5, comp.getId());
				
				pst.executeUpdate();
				con.close();
				st="Success";
		}
		catch(Exception e){
			st="Error";
		}
		return st;
	}
	
	
	public String checkUser(Account user) {
		String isUser="";
		
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://b778m35afj0hm3pmhpou-mysql.services.clever-cloud.com:3306/b778m35afj0hm3pmhpou?user=uuphcvlz6eijcak1&password=2eDCMXWnjGW6w5S9WYTW");
			pst=con.prepareStatement("select * from spiderweb where name=? and password=?;");
			pst.setString(1, user.getName());
			pst.setString(2, user.getPassword());
			rs=pst.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("userType").equals("admin")) {
					isUser="admin";
				}
				else {
					isUser="user";
				}
			}
			else {
				isUser = "false";
			}
			con.close();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return isUser;
	}
	
	public Account searchUser(String name) {
		Account acc=new Account();
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://b778m35afj0hm3pmhpou-mysql.services.clever-cloud.com:3306/b778m35afj0hm3pmhpou?user=uuphcvlz6eijcak1&password=2eDCMXWnjGW6w5S9WYTW");
				pst=con.prepareStatement("select * from spiderweb where name=?;");
				pst.setString(1, name);
				rs=pst.executeQuery();
				if(rs.next()) {
					acc.setName(rs.getString("name"));
					acc.setEmail(rs.getString("email"));
				}
				else {
					acc.setName(rs.getString("name"));
					acc.setEmail("Not found");
				}
				con.close();
		}
		catch(Exception e){
			e.printStackTrace();
			acc.setName("name");
			acc.setEmail("error");
		}
		
		return acc;
	}
	
	public String deleteCompany(String id) {
		
		Connection con;
        PreparedStatement pst;
        String rs="";
		try{
        	Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://b778m35afj0hm3pmhpou-mysql.services.clever-cloud.com:3306/b778m35afj0hm3pmhpou?user=uuphcvlz6eijcak1&password=2eDCMXWnjGW6w5S9WYTW");
            pst = con.prepareStatement("delete from companies where id=?;");
            pst.setString(1, id);
            int cnt = pst.executeUpdate();
            if(cnt == 1){
              rs="deleted";
            }
            else{
              rs="fail";
            }
            con.close();
        }
		catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	public Companies searchCompany(String id) {
		Companies cp=new Companies();
		
		Connection con;
		PreparedStatement pstt;
		ResultSet rss;
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://b778m35afj0hm3pmhpou-mysql.services.clever-cloud.com:3306/b778m35afj0hm3pmhpou?user=uuphcvlz6eijcak1&password=2eDCMXWnjGW6w5S9WYTW");
				pstt=con.prepareStatement("select * from companies where id=?;");
				pstt.setString(1, id);
				rss=pstt.executeQuery();
				if(rss.next()) {
					cp.setId(rss.getString("id"));
					cp.setCompanynm(rss.getString("companynm"));
					cp.setCategory(rss.getString("category"));
					cp.setEmployees(rss.getInt("employees"));
					cp.setCountry(rss.getString("country"));
					cp.setCeo(rss.getString("ceo"));
					cp.setYear(rss.getString("year"));
				}
				else {
					cp.setId("id");
					cp.setCompanynm("not found");
					cp.setCategory("not found");
					cp.setEmployees(0);
					cp.setCountry("not found");
					cp.setCeo("not found");
					cp.setYear("not found");
				}
				con.close();
		}
		catch(Exception e){
			e.printStackTrace();
			cp.setId("id");
			cp.setCompanynm("error");
			cp.setCategory("error");
			cp.setEmployees(0);
			cp.setCountry("error");
			cp.setCeo("error");
			cp.setYear("error");
		}
		
		return cp;
	}
	public ArrayList<Companies> getCompanyList(){
		
		ArrayList<Companies> lst = new ArrayList<>();
		Companies comp=new Companies();
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://b778m35afj0hm3pmhpou-mysql.services.clever-cloud.com:3306/b778m35afj0hm3pmhpou?user=uuphcvlz6eijcak1&password=2eDCMXWnjGW6w5S9WYTW");
				pst=con.prepareStatement("select * from companies;");
				rs=pst.executeQuery();
				while(rs.next()) {
					comp=new Companies();
					comp.setId(rs.getString("id"));
					comp.setCompanynm(rs.getString("companynm"));
					comp.setCategory(rs.getString("category"));
					comp.setEmployees(rs.getInt("employees"));
					comp.setCountry(rs.getString("country"));
					comp.setCeo(rs.getString("ceo"));
					comp.setYear(rs.getString("year"));
					lst.add(comp);			
					}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return lst;
	}
	
	
}
