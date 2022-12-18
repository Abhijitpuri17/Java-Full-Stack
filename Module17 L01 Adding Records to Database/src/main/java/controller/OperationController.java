package controller;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.UserModel;

import java.io.IOException;
import java.util.List;

import javax.sql.DataSource;

import entity.User;


public class OperationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name="jdbc/project")
	private DataSource datasource ;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page") ;
		
		if(page == null)
			page = "home" ;
		
		page = page.toLowerCase() ;
		
		switch(page){
		case "listusers":
			listUsers(request, response) ;
			break ;
		case "adduser":
			addUser(request, response);
			break;
		default:
			error(request, response);
			break;
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
		
		String operation = req.getParameter("form") ;
		
		operation = operation.toLowerCase() ;
		
		
		switch (operation) {
			case "adduseroperation":
				new User(req.getParameter("username"), req.getParameter("email")) ;
			default:
				error(req, resp);
		}
		
		
		
		
	}

	private void listUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> usersList = new UserModel().listUsers(datasource);
		request.setAttribute("usersList", usersList);
		request.setAttribute("title", "List Users");
		request.getRequestDispatcher("listUsers.jsp").forward(request, response);
	}
	
	private void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("title", "Add User");
		request.getRequestDispatcher("addUser.jsp").forward(request, response);
	}
	
	private void error(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("title", "Error Page");
		request.getRequestDispatcher("error.jsp").forward(request, response) ;
	}
	
	
		
}
