import java.io.IOException;
import java.io.InputStream;
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

@WebServlet("/verification")
public class verification extends HttpServlet {
	private static final long serialVersionUID = 1L;
       public verification() {
        super();
       
    }
       protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	   response.setContentType("text/html");
    	   PrintWriter out = response.getWriter();
    	   String user = request.getParameter("otp-user");
    	   HttpSession session=request.getSession();
    	   String otp=(String)session.getAttribute("otp");
    	   if(otp.equals(user)) {
//    		   InputStream inputStream = null;
    		    out.println("OTP VERIFIED");
    		    String nam = (String) request.getSession().getAttribute("nam");
//    	 	    out.println(nam);
    		    String o = (String) request.getSession().getAttribute("occupation");
    			String e = (String) request.getSession().getAttribute("email");
    			String c = (String) request.getSession().getAttribute("country");
    			String number = (String) request.getSession().getAttribute("number");
    			String date = (String) request.getSession().getAttribute("date");
    			String time = (String) request.getSession().getAttribute("time");
    			String phone = (String) request.getSession().getAttribute("phone");
    			String image = (String) request.getSession().getAttribute("image");
    			String image1 = (String) request.getSession().getAttribute("image1");
    			String p = (String) request.getSession().getAttribute("p");
    			String message = (String) request.getSession().getAttribute("message");
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
//    			out.println(p);
    			response.sendRedirect("login1.html");
   			}
    	   else {
   				out.println("Wrong otp");
   				response.sendRedirect("reg2.html");  
   				
   			}
       	}
      }
