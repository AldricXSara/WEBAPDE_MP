package ecu.webapde.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		// retrieve the values from the user-submitted form
		String username = request.getParameter("logUser");
		String password = request.getParameter("logPass");
		String remember = request.getParameter("remember");
		
		final String driver = "com.mysql.jdbc.Driver";
		final String url = "jdbc:mysql://localhost:3306/webapde_mp";
		final String user = "root";
		final String pass= "1234";
		
		try{
			Class.forName(driver);
			
			Connection conn = DriverManager.getConnection(url, user, pass);
			
			String query = "SELECT * FROM users";
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(query);
			
			boolean found = false;
			
			while(rs.next()) {
				String user_un = rs.getString("user_username");
				String user_pass = rs.getString("user_password");
				
				if(username.equals(user_un) && password.equals(user_pass)) {
					found = true;
					
					int user_id = rs.getInt("user_id");
					String user_firstname = rs.getString("user_firstname");
					String user_lastname = rs.getString("user_lastname");
					String user_description = rs.getString("user_description");
					
					HttpSession session = request.getSession();
					session.setAttribute("userID", user_id);
					session.setAttribute("firstname", user_firstname);
					session.setAttribute("lastname", user_lastname);
					session.setAttribute("description", user_description);
					session.setAttribute("uname", user_un);
					
					if(remember != null) {
						Cookie cookie = new Cookie("username", username);
						cookie.setMaxAge(60*60*24*21);
						response.addCookie(cookie);
					}
							
					request.getRequestDispatcher("home.jsp")
						.forward(request,  response);
					
					break;
				}
			}
			
			if(!found)
				response.sendRedirect("login.html");
			
			conn.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e){
			e.printStackTrace();
		}
	}

}
