<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %>
<%@ page import="java.nio.charset.*" %>
<%@ page import="java.sql.*" %> 

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title> Refugee Discussion Forum</title>
        <meta name="description" content="Tuts+ Chat Application" />
        <style>
        	@charset "ISO-8859-1";
* {
    margin: 0;
    padding: 0;
  }
   
  body {
    margin: 20px auto;
    font-family: "Lato";
    font-weight: 300;
  }
   
  form {
    padding: 15px 25px;
    display: flex;
    gap: 10px;
    justify-content: center;
  }
   
  form label {
    font-size: 1.5rem;
    font-weight: bold;
  }
   
  input {
    font-family: "Lato";
  }
   
  a {
    color: #0000ff;
    text-decoration: none;
  }
   
  a:hover {
    text-decoration: underline;
  }
   
  #wrapper,
  #loginform {
    margin: 0 auto;
    padding-bottom: 25px;
    background: #eee;
    width: 600px;
    max-width: 100%;
    border: 2px solid #212121;
    border-radius: 4px;
  }
   
  #loginform {
    padding-top: 18px;
    text-align: center;
  }
   
  #loginform p {
    padding: 15px 25px;
    font-size: 1.4rem;
    font-weight: bold;
  }
   
  #chatbox {
    text-align: left;
    margin: 0 auto;
    margin-bottom: 25px;
    padding: 10px;
    background: #fff;
    height: 300px;
    width: 530px;
    border: 1px solid #a7a7a7;
    overflow: auto;
    border-radius: 4px;
    border-bottom: 4px solid #a7a7a7;
  }
   
  #usermsg {
    flex: 1;
    border-radius: 4px;
    border: 1px solid #ff9800;
  }
   
  #name {
    border-radius: 4px;
    border: 1px solid #ff9800;
    padding: 2px 8px;
  }
   
  #submitmsg,
  #enter{
    background: #ff9800;
    border: 2px solid #e65100;
    color: white;
    padding: 4px 10px;
    font-weight: bold;
    border-radius: 4px;
  }
   
  .error {
    color: #ff0000;
  }
   
  #menu {
    padding: 15px 25px;
    display: flex;
  }
   
  #menu p.welcome {
    flex: 1;
  }
   
  a#exit {
    color: white;
    background: #c62828;
    padding: 4px 8px;
    border-radius: 4px;
    font-weight: bold;
  }
   
  .msgln {
    margin: 0 0 5px 0;
  }
   
  .msgln span.left-info {
    color: orangered;
  }
   
  .msgln span.chat-time {
    color: #666;
    font-size: 60%;
    vertical-align: super;
  }
   
  .msgln b.user-name, .msgln b.user-name-left {
    font-weight: bold;
    background: #546e7a;
    color: white;
    padding: 2px 4px;
    font-size: 90%;
    border-radius: 4px;
    margin: 0 5px 0 0;
  }
   
  .msgln b.user-name-left {
    background: orangered;
  }
        	
        </style>
    </head>
    <body>
    	
        <div id="wrapper">
            <div id="menu">
                <p class="welcome">Welcome, <b>${sessionScope['name']}</b></p>
                <p class="logout"><a id="exit" href="userindex.jsp">Exit Chat</a></p>
            </div>
 
            <div id="chatbox">
            <%
           	 	Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ref","root","");
				String sql = "select * from messages";
				PreparedStatement statement = connection.prepareStatement(sql);
				ResultSet rs = statement.executeQuery();
				while(rs.next()){
					out.println(rs.getString("msg"));
				}
			
            %>
            </div>
 
            <form name="message" action="" method="">
                <input name="usermsg" type="text" id="usermsg" autofocus="autofocus"/>
                <input name="submitmsg" type="submit" id="submitmsg" value="Send" onclick="reloadpage()")/>
            </form>
        </div>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script type="text/javascript">
            // jQuery Document
            $(document).ready(function () {
                $("#submitmsg").click(function () {
                    var clientmsg = $("#usermsg").val();
                    $.get("postforum", { textmsg: clientmsg });
                    $("#usermsg").val("");
                    return false;
                });
 
	
                var messageBody = document.querySelector('#chatbox');
                messageBody.scrollTop = messageBody.scrollHeight - messageBody.clientHeight;
                
            });
            function reloadpage(){
            	setTimeout(function(){
                    location.reload();
                   },500);
            }
            
        </script>
    </body>
</html>

    