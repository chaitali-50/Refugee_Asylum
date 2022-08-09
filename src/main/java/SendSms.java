import java.io.BufferedReader;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Date;
import javax.net.ssl.HttpsURLConnection;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
/**
 * Servlet implementation class SendSms
 */
@WebServlet("/SendSms")
public class SendSms extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendSms() {
        super();
       
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String num = request.getParameter("number");
		String otp = request.getParameter("otp");
		
		SendSms("Your 4 digit pin is "+otp+"<3 HB",num);
		HttpSession session=request.getSession();
		session.setAttribute("otp",otp);
		String nam = request.getParameter("name");
			//HttpSession session=request.getSession();
		session.setAttribute("nam",nam);
			//out.println(nam);
		String occupation = request.getParameter("occupation");
		session.setAttribute("occupation",occupation);
		String email = request.getParameter("email");
		session.setAttribute("email",email);
		String country = request.getParameter("country");
		session.setAttribute("country",country);
		String number = request.getParameter("number");
		session.setAttribute("number",number);
		String date = request.getParameter("date");
		session.setAttribute("date",date);
		String time = request.getParameter("time");
		session.setAttribute("time",time);
		String phone = request.getParameter("phone");
		session.setAttribute("phone",phone);
		String image = request.getParameter("image");
		session.setAttribute("image",image);
		String message = request.getParameter("message");
		session.setAttribute("message",message);
		String image1 = request.getParameter("image1");
		session.setAttribute("image1",image1);
		String p = request.getParameter("p");
		session.setAttribute("p",p);
		RequestDispatcher rd = request.getRequestDispatcher("otp-verification.html");
			rd.include(request, response); 
		
		
	}
	


	private void SendSms(String message,String number) {
		// TODO Auto-generated method stub
		 // TODO Auto-generated constructor stub
        System.out.println(message);
//		System.out.println(number);
		try
		{
		
		String apiKey="vT3pR4KuNWt61qzkxsFCInZ7bgPdLhOSi5Hmf9reaB0XAYoQc2T0teywf1iYhQaHBkjR8ClrdGmcAqKI";
		String sendId="FSTSMS";
		//important step...
		message=URLEncoder.encode(message, "UTF-8");
		String language="english";
		
		String route="p";
		
		
		String myUrl="https://www.fast2sms.com/dev/bulkV2?authorization="+apiKey+"&sender_id="+sendId+"&message="+message+"&language="+language+"&route="+route+"&numbers="+number;
		
		//sending get request using java..
		
		URL url=new URL(myUrl);
		
		HttpsURLConnection con=(HttpsURLConnection)url.openConnection();
		
		
		con.setRequestMethod("GET");
		
		con.setRequestProperty("User-Agent", "Mozilla/5.0");
		con.setRequestProperty("cache-control", "no-cache");
		System.out.println("Wait..............");
		
		int code=con.getResponseCode();
		
		System.out.println("Response code : "+code);
		
		StringBuffer response=new StringBuffer();
		
		BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
		
		while(true)
		{
			String line=br.readLine();
			if(line==null)
			{
				break;
			}
			response.append(line);
		}
		
		System.out.println(response);
		
		
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
    }

