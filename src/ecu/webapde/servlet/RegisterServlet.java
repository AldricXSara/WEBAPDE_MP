package ecu.webapde.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterServlet() {
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
		String firstname = request.getParameter("regFirst");
		String lastname = request.getParameter("regLast");
		String username = request.getParameter("regUser");
		String password = request.getParameter("regPass");
		String description = request.getParameter("regDescription");
		
		final String driver = "com.mysql.jdbc.Driver";
		final String url = "jdbc:mysql://localhost:3306/webapde_mp"; //jdbc:mysql://localhost:port#ofdb/schemaname
		final String user = "root";
		final String pass= "1234";
		
		try{
			Class.forName(driver);
			
			Connection conn = DriverManager.getConnection(url, user, pass);
			
			PreparedStatement stmt =  conn.prepareStatement("INSERT INTO users (user_firstname, user_lastname, user_username, user_password, user_description) VALUES (?, ?, ?, ?, ?)");
			
			stmt.setString(1, firstname);
			stmt.setString(2, lastname);
			stmt.setString(3, username);
			stmt.setString(4, password);
			stmt.setString(5, description);
			
			stmt.executeUpdate();
			
			conn.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e){
			e.printStackTrace();
		}
		
		response.sendRedirect("login.html");
		
	}

}
