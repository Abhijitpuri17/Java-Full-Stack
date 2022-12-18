package servlets;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

/**
 * Servlet implementation class Demo
 */
public class Demo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name="jdbc/project")
	
	private DataSource datasource ;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// STEP 1: Initialize Connection Objects
		
			Connection connect = null ;
			Statement stmt = null ;
			
			ResultSet rs = null ;
			
			PrintWriter out = response.getWriter() ;
			
			response.setContentType("text/html");
			
			
			try {
				connect = datasource.getConnection() ;
				
			// STEP 2: Create a SQL statements string
				
				String query = "select * from users" ;
				stmt = connect.createStatement() ;
			   	
				
			// STEP 3: Execute a SQL query
				
				rs = stmt.executeQuery(query) ;
				
				
			// STEP 4: Process the result set
				
				while(rs.next()) {
					out.print("</br>" + rs.getString("email")) ;
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
				out.print(e.getMessage()) ;
				
			}

	}

}
