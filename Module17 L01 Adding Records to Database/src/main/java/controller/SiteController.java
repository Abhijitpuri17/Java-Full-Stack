package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SiteController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page") ;
		
		if(page == null)
			page = "home" ;
		
		page = page.toLowerCase() ;
		
		
		switch(page) {
			case "home" :
				home(request, response) ;
				break ;
			default:
				error(request, response);
				break;
		}
		
		
	}

	private void home(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("title", "Home");		
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}	
		
	private void error(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("title", "Error Page");
		request.getRequestDispatcher("error.jsp").forward(request, response) ;
	}
	
		
}
