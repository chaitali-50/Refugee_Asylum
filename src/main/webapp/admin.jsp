<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
    <%@ page import = "javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Dashboard</title>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<style>
body{
    background:#eee;    
}
.main-box.no-header {
    padding-top: 20px;
}
.main-box {
    background: #FFFFFF;
    -webkit-box-shadow: 1px 1px 2px 0 #CCCCCC;
    -moz-box-shadow: 1px 1px 2px 0 #CCCCCC;
    -o-box-shadow: 1px 1px 2px 0 #CCCCCC;
    -ms-box-shadow: 1px 1px 2px 0 #CCCCCC;
    box-shadow: 1px 1px 2px 0 #CCCCCC;
    margin-bottom: 16px;
    -webikt-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
}
.table a.table-link.danger {
    color: #e74c3c;
}
.label {
    border-radius: 3px;
    font-size: 0.875em;
    font-weight: 600;
}
.user-list tbody td .user-subhead {
    font-size: 0.875em;
    font-style: italic;
}
.user-list tbody td .user-link {
    display: block;
    font-size: 1.25em;
    padding-top: 3px;
    margin-left: 60px;
}
a {
    color: #3498db;
    outline: none!important;
}
.user-list tbody td>img {
    position: relative;
    max-width: 50px;
    float: left;
    margin-right: 15px;
}

.table thead tr th {
    text-transform: uppercase;
    font-size: 0.875em;
}
.table thead tr th {
    border-bottom: 2px solid #e7ebee;
}
.table tbody tr td:first-child {
    font-size: 1.125em;
    font-weight: 300;
}
.table tbody tr td {
    font-size: 0.875em;
    vertical-align: middle;
    border-top: 1px solid #e7ebee;
    padding: 12px 8px;
}
a:hover{
text-decoration:none;
}
</style>
</head>
<body>
<%
String dbURL = "jdbc:mysql://localhost:3306/refugee_asylum_db";
String dbUsername = "root"; 
String dbPassword = "root"; 
Class.forName("com.mysql.jdbc.Driver"); 
Connection con	=	DriverManager.getConnection(dbURL, dbUsername, dbPassword);
//int billno		=	Integer.parseInt(request.getParameter("bill"));

try
{	
	Statement stmt	=	con.createStatement();
	String sql		=	"SELECT * FROM refugee_details";
	ResultSet rs	=	stmt.executeQuery(sql);	
	
	if(rs!= null)
	{
		out.println("Record found....");
		//out.println("<br><br>Bill No.: "+rs.getInt(1)+"<br>Bill Date : "+rs.getString(2)+"<br>Customer Name : "+rs.getString(3));
		
		while(rs.next())
		{
%>

<hr>
<div class="container bootstrap snippets bootdey">
    <div class="row">
        <div class="col-lg-12">
            <div class="main-box no-header clearfix">
                <div class="main-box-body clearfix">
                    <div class="table-responsive">
                        <table class="table user-list">
                            <thead>
                                <tr>
                                <th><span>ID</span></th>
                                <th><span>Name</span></th>
                                <th><span>Gender</span></th>
                                <th class="text-center"><span>Status</span></th>
                                <th><span>Email</span></th>
                                <th>&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                	<td>
                                		<%=rs.getInt(1)%>
                                	</td>
                                    <td>
                                        <!-- <img src="https://bootdey.com/img/Content/user_1.jpg" alt=""> -->
                                        <a href="#" class="user-link"><%=rs.getString(2)%></a>
                                    </td>
                                    <td><%=rs.getString(3)%></td>
                                    <td class="text-center">
                                        <span class="label label-default"><%=rs.getString(12) %></span>
                                    </td>
                                    <td>
                                        <a href="#"><%= rs.getString(10) %></a>
                                    </td>
                                    <td style="width: 20%;">
                                        <a href="#" class="table-link text-warning">
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
                                        <a href="edit_refugee.html" class="table-link text-info">
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
                                        <a href="delete_refugee.html" class="table-link danger">
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
                                    </td>
                                </tr>
                                <!--  
                                <tr>
                                    <td>
                                        <img src="https://bootdey.com/img/Content/user_3.jpg" alt="">
                                        <a href="#" class="user-link">Full name 2</a>
                                        <span class="user-subhead">Admin</span>
                                    </td>
                                    <td>2013/08/12</td>
                                    <td class="text-center">
                                        <span class="label label-success">Active</span>
                                    </td>
                                    <td>
                                        <a href="#">marlon@brando.com</a>
                                    </td>
                                    <td style="width: 20%;">
                                        <a href="#" class="table-link  text-warning">
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
                                        <a href="#" class="table-link  text-info">
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
                                        <a href="#" class="table-link danger">
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="https://bootdey.com/img/Content/user_2.jpg" alt="">
                                        <a href="#" class="user-link">Full name 3</a>
                                        <span class="user-subhead">Member</span>
                                    </td>
                                    <td>2013/08/12</td>
                                    <td class="text-center">
                                        <span class="label label-danger">inactive</span>
                                    </td>
                                    <td>
                                        <a href="#">marlon@brando.com</a>
                                    </td>
                                    <td style="width: 20%;">
                                        <a href="#" class="table-link  text-warning">
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
                                        <a href="#" class="table-link  text-info">
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
                                        <a href="#" class="table-link danger">
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
                                    </td>
                                </tr>-->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%
		}
	}
	else
	{
		out.println("<br>Record does not exists...");
	}
}
catch (Exception e)
{ 
	out.println("Error in con....");
	e.printStackTrace(); 
}  
%>
</body>
</html>