import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/reg")
public class reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ref","root","");
			String n=request.getParameter("email");
			String p=request.getParameter("pass");
			String sql ="SELECT * from requesterlogin_tb WHERE r_email = ? AND r_password = ?";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, n);
			statement.setString(2, p);
			ResultSet rs = statement.executeQuery();
			
			HttpSession session=request.getSession();
//			session.setAttribute("name",name);
			if(rs.next())
			{
				String name = rs.getString("r_name");
				session.setAttribute("name",name);
				response.sendRedirect("userindex.jsp");
			}
			else
				out.println("WRONG EMAIL ID OR PASSWORD");
			
			connection.close();
			
		}
		catch(Exception e)
		{
			System.out.print(e);
			
		}
		
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.sendRedirect("login1.html");
	}

}
