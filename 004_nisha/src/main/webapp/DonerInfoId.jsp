<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-image: url('./images/BB5.jpg');

}

.login-container {
	background: linear-gradient(135deg,#dcd7d7,#fffbfb);
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	width: 300px;
	text-align: center;
}

h2 {
	margin-bottom: 20px;
}
.backtohomepg {
  color: black; /* Text color of dropdown items */
  padding: 8px 20px;
  font-size: 24px;
  transition: background-color 0.3s, color 0.3s;
}

.backtohomepg:hover {
  background-color: white; /* Background color on hover */
  color: red; /* Text color on hover */
}
</style>
</head>
<body>
	<%String username = request.getParameter("username");
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","nisha");
		String sql = "select * from medicalreport where username = '"+username+"'";
		Statement statement = connection.createStatement();
		ResultSet rs = statement.executeQuery(sql);
		rs.next();
		String uid = rs.getString("personsuniqueid");
		String wg = rs.getString("weight");
		
		%>
		<div class="login-container">
		<h1>YOUR UNIQUE ID FOR BLOOD DONATION IS :</h1>
		<h1><%=uid%></h1>
		<a class="backtohomepg" href="home.jsp">BACK TO MAIN PAGE</a>
		
		</div>
		
		
		<%
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch(ClassNotFoundException e) {
		e.printStackTrace();
	}	
	%>
	
</body>
</html>