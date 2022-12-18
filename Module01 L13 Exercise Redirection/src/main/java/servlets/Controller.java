package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Controller() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String param = request.getParameter("page") ;
		if (param.equals("login")) {
			request.getRequestDispatcher("/login.jsp").forward(request, response) ;
			//getServletContext().getRequestDispatcher("/login.jsp").forward(request, response); 
		} else if (param.equals("signup")) {
			getServletContext().getRequestDispatcher("/signup.jsp").forward(request, response); 
		} else if (param.equals("about")) {
			getServletContext().getRequestDispatcher("/about.jsp").forward(request, response); 
		} else {
			getServletContext().getRequestDispatcher("/notfound.jsp").forward(request, response); 
		}
			
	}

}
