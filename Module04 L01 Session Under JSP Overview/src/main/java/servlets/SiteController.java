package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


//@WebServlet("/SiteController")
public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SiteController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username") ;
		String password = request.getParameter("password") ;
		
		if (username != null && !username.equals("") && password != null && !password.equals("")) {
			
			// invalidating session if any
			request.getSession().invalidate();
			
			
			HttpSession session = request.getSession(true);
			session.setMaxInactiveInterval(300);
			
			Cookie cUsername = new Cookie("username", username) ;
			
			response.addCookie(cUsername);
			
			response.sendRedirect("memberArea.jsp");
			
		}
		else {
			response.sendRedirect("login.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response) ;
	}

}
