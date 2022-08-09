<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@ page import="java.sql.*" %>

<% 
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
String dataPoints = null;

try
{
	Cookie[] ck=request.getCookies();
	String Cookie1=ck[0].getValue();
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/refugee_asylum_db","root","root");

	if(conn == null)
	{
		//out.println("Failed to establish the connection");
	}
	else
	{
		//out.println("connection is establish");
	}
	Statement st1=conn.createStatement();

	//ResultSet rs1 = st1.executeQuery("select sub_code from mcs_subject where trimester=1");
	ResultSet rs2 = st1.executeQuery("select * from refugee_details;");
	//String s[]= new String[7];
	
	Integer i=0;
	
	/*while(rs2.next())
	{
	 	s[i] =rs2.getString(1);
	 	out.println(s[i]);
		i++;
	}*/
	 
	Integer id[]= new Integer[7];
	Integer j = 0 ;
	
	while(rs2.next())
	{
			id[0] =rs2.getInt(1);
			id[1] =rs2.getInt(4);
			id[2] =rs2.getInt(11);
			
	 		//out.println(marks[0]+" "+marks[1]);
	} 

	map = new HashMap<Object,Object>(); map.put("label", "Male"); map.put("y", id[0]); list.add(map);
	map = new HashMap<Object,Object>(); map.put("label", "Other"); map.put("y", id[1]); list.add(map);
	map = new HashMap<Object,Object>(); map.put("label", "Female"); map.put("y", id[2]); list.add(map);
//	map = new HashMap<Object,Object>(); map.put("label", "MCS104"); map.put("y", id[3]); list.add(map);
//	map = new HashMap<Object,Object>(); map.put("label", "MCS105"); map.put("y", marks[4]); list.add(map);
//	map = new HashMap<Object,Object>(); map.put("label", "MCS106"); map.put("y", marks[5]); list.add(map);
//	map = new HashMap<Object,Object>(); map.put("label", "MCS107"); map.put("y", marks[6]); list.add(map);
	 
	dataPoints = gsonObj.toJson(list);
	
}
catch(Exception e){
	

}


%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">

window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "dark2",
	animationEnabled: true,
	exportEnabled: true,
	title: {
		text: "Refugee Numbers"
	},
	axisX: {
		title: "Number of Refugees"
	},
	axisY: {
		title: "Age",
		includeZero: true,
		maximum: 100,
		
	},
	data: [{
		type: "column",
		yValueFormatString: "#,##0 Gender",
		dataPoints : <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

</body>
</html>