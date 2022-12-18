package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class MemberAreaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public MemberAreaServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action = request.getParameter("action") ;
		
		PrintWriter out = response.getWriter() ;
		
		out.println(action) ;
		
		
		switch(action)
		{
			case "destroy":
				request.getSession().invalidate();
				
				Cookie[] cookies = request.getCookies() ;
				
				for (Cookie cookie: cookies)
				{
					if (cookie.getName().equals("username"))
					{
						cookie.setValue(null);
						cookie.setMaxAge(0);
						response.addCookie(cookie);
					}
				}
				
				response.sendRedirect("login.jsp");
				break ;
			default:
				break ;
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
