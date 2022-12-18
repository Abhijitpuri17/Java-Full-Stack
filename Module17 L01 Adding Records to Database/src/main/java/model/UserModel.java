package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import entity.User;
import jakarta.annotation.Resource;

public class UserModel {
	
	public List<User> listUsers(DataSource datasource) {

		
		// STEP 1: Initialize Connection Objects
		
		List<User> usersList = new ArrayList<>() ;
		
		Connection connect = null ;
		Statement stmt = null ;
					
		ResultSet rs = null ;
					
				
		try {
			connect = datasource.getConnection() ;
					
			// STEP 2: Create a SQL statements string
						
			String query = "select * from users" ;
			stmt = connect.createStatement() ;
					   	
						
			// STEP 3: Execute a SQL query
						
			rs = stmt.executeQuery(query) ;
						
						
			// STEP 4: Process the result set
						
			while(rs.next()) {							
				usersList.add(
						new User(
								rs.getInt("user_id"),
								rs.getString("username"),
								rs.getString("email")
							)
						);
			}
						
		} 
		catch (SQLException e) {
					e.printStackTrace();			
		}
		
		return usersList;
	}

	


}
