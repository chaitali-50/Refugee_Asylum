

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class regdb
 */
@WebServlet("/regdb")
public class regdb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public regdb() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html");
 	    PrintWriter out = response.getWriter();
 	    String nam = request.getParameter("name");
 	    out.println(nam);
	    String o = request.getParameter("occupation");
		String e = request.getParameter("email");
		String c = request.getParameter("country");
		String number = request.getParameter("number");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String phone = request.getParameter("phone");
		String image = request.getParameter("image");
		String image1 = request.getParameter("image1");
		String p = request.getParameter("p");
		String message = request.getParameter("message");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ref","root","");
			PreparedStatement pst = con.prepareStatement("insert into reg2(name,occupation,email,country,phonenumber,dob,time,telephone,image,message,image1,p) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1,nam);
			pst.setString(2,o);
			pst.setString(3,e);
			pst.setString(4,c);
			pst.setString(5,number);
			pst.setString(6,date);
			pst.setString(7,time);
			pst.setString(8,phone);
			pst.setString(9,image);
			pst.setString(10,message);
			pst.setString(11,image1);
			pst.setString(12,p);
			int x = pst.executeUpdate();
			
			}
		catch(Exception e1){
			System.out.print(e1);
			out.println("hi");
			}  
		}

}
