<!DOCTYPE html>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Blood Bank by Nisha</title>
<style type="text/css">
body {
	height: auto;
	width: 150vh;
}

.login-container {
	background: linear-gradient(135deg,#dcd7d7,#fffbfb);
	padding: auto;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	width: 300px;
	text-align: center;
	margin-left:auto;
	margin-right:auto;
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
}</style>
</head>


<body>
	<div class="container">
	<b><a href="MedicalReports.jsp">Medical Reports</a></b>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Username</th>
					<th>Password</th>
					<th>Name</th>
					<th>Age</th>
					<th>DOB</th>
					<th>Email</th>
					<th>Phone no</th>
					<th>Blood Group</th>
					<th>Pincode</th>
					<th>Status</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<%
      	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","nisha");
			String sql = "select * from userinformation";
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next()){
		%>
		<form action="UpdatedeleteController" method="post">
				<tr>
					<td>
						<% String uname = rs.getString("username"); %>
						<input name="username" type="text" value="<%=uname%>" readonly="readonly">
					</td>
					<td>
						<% String pass = rs.getString("password"); %> <%=pass%>
					</td>
					<td>
						<% String name = rs.getString("name"); %> <%=name%>
					</td>
					<td>
						<% String age = rs.getString("age"); %> <%=age%>
					</td>
					<td>
						<% String dob = rs.getString("dob"); %> <%=dob%>
					</td>
					<td>
						<% String email = rs.getString("email"); %> <%=email%>
					</td>
					<td>
						<% String pnum = rs.getString("phone"); %> <%=pnum%>
					</td>
					<td>
						<% String bgroup = rs.getString("blood_group"); %> <%=bgroup%>
					</td>
					<td>
						<% String pincode = rs.getString("pincode"); %> <%=pincode%>
					</td>
					<td>
						<% String status = rs.getString("status"); %> <%=status%>
					</td>
					<td><button name="updatebutton" value="updatebutton" class="btn btn-primary btn-sm update-btn">Update</button></td>
					<td><button name="deletebutton" value="deletebutton" class="btn btn-danger btn-sm delete-btn">Delete</button></td>
				</tr>
		</form>
				<%
			}
      	} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
      	%>
			</tbody>
		</table>
	</div>
	<div class="login-container">
      	<a class="backtohomepg" href="home.jsp">BACK TO MAIN PAGE</a>
      	</div>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
