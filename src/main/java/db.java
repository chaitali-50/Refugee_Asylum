
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/db")
	public class db extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String nam = request.getParameter("name");
		String emai = request.getParameter("email");
		String pw = request.getParameter("pwd");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ref","root","");
			PreparedStatement pst = con.prepareStatement("insert into requesterlogin_tb(r_name,r_email,r_password) VALUES (?,?,?)");
			pst.setString(1,nam);
			pst.setString(2,emai);
			pst.setString(3,pw);
			int x = pst.executeUpdate();
			response.sendRedirect("reg2.html");
		}
		catch(Exception e){
			System.out.print(e);
			
		}
	}

}