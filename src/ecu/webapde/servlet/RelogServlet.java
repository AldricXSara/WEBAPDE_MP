package ecu.webapde.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RelogServlet
 */
@WebServlet("/relog")
public class RelogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RelogServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// get cookies
		Cookie[] cookies = request.getCookies();
		String username = null;
		// check if username cookie exists
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie currentCookie = cookies[i];
				if (currentCookie.getName().equals("username")) {
					username = currentCookie.getValue();
					response.addCookie(currentCookie);
				}
			}
		}
		// if exists
		if (username != null) {
			request.getSession().setAttribute("username", username);
			request.getRequestDispatcher("home.jsp")
				.forward(request,  response);
		}
		else {
			response.sendRedirect("index.html");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
