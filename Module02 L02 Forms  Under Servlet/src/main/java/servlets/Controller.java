package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8"); 
		
		PrintWriter out = response.getWriter() ;
		
		String[] languages = request.getParameterValues("language") ;
		
		out.println("Name: " + request.getParameter("name") + "<br/>");
		out.println("Gender: " + request.getParameter("gender") + "<br/>");
		out.println("Country: " + request.getParameter("country") + "<br/>");
		
		if (languages == null || languages.length == 0) {
			out.println("No language selected!\n");
		}
		else {
			out.print("Languages known: ");
			for (int i = 0 ; i < languages.length; i++){
				out.print(languages[i]);
				if (i < languages.length - 1)
					out.print(", ") ;
			}
			out.println("<br/>") ;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response) ;
	}

}
