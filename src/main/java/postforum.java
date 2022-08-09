
import java.util.Date;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class postforum
 */
@WebServlet("/postforum")
public class postforum extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public postforum() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String text=request.getParameter("textmsg");
		HttpSession session=request.getSession();
		String name = (String) session.getAttribute("name");
		DateFormat dateFormat = new SimpleDateFormat("hh.mm aa");
    	String dateString = dateFormat.format(new Date()).toString();
		String text_msg = "<div class='msgln'><span class='chat-time'>"+dateString+"</span> <b class='user-name'>"+name+"</b> "+text+"<br></div>";
//		
//		try(FileOutputStream fos = new FileOutputStream("C:\\Users\\HP\\eclipse-workspace\\refugees\\src\\main\\webapp\\log.html",true);
//				OutputStreamWriter osw = new OutputStreamWriter(fos, StandardCharsets.UTF_8);
//				BufferedWriter writer = new BufferedWriter(osw)){
//			writer.write(text_msg);
//		}
//		catch (IOException e) {
//	         e.printStackTrace();
//	     }
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ref","root","");
			PreparedStatement pst = con.prepareStatement("insert into messages(msg) VALUES (?)");
			pst.setString(1,text_msg);
			int x = pst.executeUpdate();
			
		}
		catch(Exception e){
			System.out.print(e);
			
		}	
		RequestDispatcher rd=request.getRequestDispatcher("forum.jsp");  
        rd.forward(request, response);  

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
