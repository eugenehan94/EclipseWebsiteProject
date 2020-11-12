package com.loginDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DAO {
	String sql = "SELECT * FROM people WHERE user=? and pass=?";
	String url = "jdbc:mysql://localhost:3306/selfMade";
	String username = "root";
	String password = "admin";
	Connection con = null;

	// Check if the user exist already - use for sign up
	String sql1 = "SELECT * FROM people WHERE user=?";

	public boolean check(String user) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql1);
			st.setString(1, user);

			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				return true;
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean check(String user, String pass) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, user);
			st.setString(2, pass);

			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				return true;
			}

			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	String sql2 = "SELECT * FROM people WHERE user=? AND areaCode=? AND phoneNumber=?";

	public boolean check(String user, String areaCode, String phoneNumber) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql2);
			st.setString(1, user);
			st.setString(2, areaCode);
			st.setString(3, phoneNumber);

			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				return true;
			}

			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	String sql3 = "UPDATE people SET pass=? WHERE user=?";

	public void update(String user, String pass) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql3);
			st.setString(1, pass);
			st.setString(2, user);
			st.execute();
			con.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException se) {
			se.printStackTrace();
		}

	}

	String sql4 = "INSERT INTO people (user, pass, areaCode, phoneNumber)" + "VALUES(?,?,?,?)";

	// To create a new user
	public void insert(String user, String pass, int areaCode, int phoneNumber) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql4);
			st.setString(1, user);
			st.setString(2, pass);
			st.setInt(3, areaCode);
			st.setInt(4, phoneNumber);
			st.executeUpdate();
			con.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException se) {
			se.printStackTrace();
		}

	}

}
