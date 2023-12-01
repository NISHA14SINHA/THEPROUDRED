<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Blood Bank by Nisha</title>

</head>
<style>
body {
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	
}
.login-container {
	background: linear-gradient(135deg,#dcd7d7,#fffbfb);
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	width: 300px;
	text-align: center;
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
<body>
	<%
	String blood_group = request.getParameter("blood_group");
	String pincode = request.getParameter("pincode");
	%>
	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					
					<th>Name</th>
					<th>Blood Group</th>
					<th>Age</th>
					<th>Phone number</th>
					<th>Email</th>
					<th>Doner uid</th>
				</tr>
			</thead>
			<tbody>
			
			<%
      	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","nisha");
			//select * from userinformation where blood_group='b+' AND pincode='266696';
			String sql = "select * from userinformation where blood_group='"+blood_group+"'AND pincode='"+pincode+"'AND status='Doner'";
			
			//out.println(sql);
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next()){
		%>
		<tr>
					<td>
						<% String name = rs.getString("name"); %> <%=name%>
		
					</td>
					<td>
						<% String bgroup = rs.getString("blood_group"); %> <%=bgroup%>
					</td>
					<td>
						<% String age = rs.getString("age"); %> <%=age%>
					</td>
					<td>
						<% String pnum = rs.getString("phone"); %> <%=pnum%>
					</td>
					<td>
						<% String email = rs.getString("email"); %> <%=email%>
					</td>
				<%
				String sql2 = "select username from userinformation where name = '"+name+"'";
				rs = statement.executeQuery(sql2);
				rs.next();
				String username = rs.getString("username");
				String sql3 = "select personsuniqueid from medicalreport where username = '"+username+"'";
				rs = statement.executeQuery(sql3);
				rs.next();
				String pid = rs.getString("personsuniqueid");
				%>
				
					<td>
						<%=pid%>
					</td>
				
				
				<% 
			}
      	} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
      	%>
      	</tbody></table></div>
      	<div class="login-container">
      	<h3>Here is the details of all the Doners that matches with Receivers Blood group & Pincode</h3><hr><hr>
      	<a class="backtohomepg" href="home.jsp">BACK TO MAIN PAGE</a>
      	</div>
      	
</body>
</html>