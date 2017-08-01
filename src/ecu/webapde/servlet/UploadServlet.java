package ecu.webapde.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/upload")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet() {
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
		HttpSession session = request.getSession();
		int user_id = (int) session.getAttribute("userID");
		
		String photourl = request.getParameter("imageFile");
		String title = request.getParameter("imageTitle");
		String description = request.getParameter("imageDesc");
		String tags = request.getParameter("imageTags");
		
		final String driver = "com.mysql.jdbc.Driver";
		final String url = "jdbc:mysql://localhost:3306/webapde_mp"; //jdbc:mysql://localhost:port#ofdb/schemaname
		final String user = "root";
		final String pass= "1234";
		
		try{
			Class.forName(driver);
			
			Connection conn = DriverManager.getConnection(url, user, pass);
			
			PreparedStatement stmt =  conn.prepareStatement("INSERT INTO photos (user_id, photo_url, photo_title, photo_description, photo_tags) VALUES (?, ?, ?, ?, ?)");
			
			stmt.setInt(1, user_id);
			stmt.setString(2, photourl);
			stmt.setString(3, title);
			stmt.setString(4, description);
			stmt.setString(5, tags);
			
			stmt.executeUpdate();
			
			conn.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e){
			e.printStackTrace();
		}
		
		response.sendRedirect("home.jsp");
	}

}
