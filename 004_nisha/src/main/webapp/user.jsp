<!DOCTYPE html>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>Blood Bank by Nisha</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 130vh;
	background: linear-gradient(40deg,#e8e9fa,#f30d0dc4);
}

.login-container {
	background: linear-gradient(40deg,#f30d0dc4,#e8e9fa);
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	width: 600px;
	text-align: center;
}

.login-container h4 {
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
}

.form-group input {
	width: 80%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 3px;
}
</style>
</head>
<body>
	<div class="login-container">
		<h4>YOUR DETAILS</h4>
		<form action="DonateReceiveController" method="post">
			<% String oldUsername = request.getParameter("username"); %>
			<input type="text" name="oldusername" value="<%=oldUsername%>" hidden>
			<div class="form-group">
				<%
      	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","nisha");
			String sql = "select * from userinformation where username='"+oldUsername+"'";
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next()){
		%>
				<label for="username"><b>USERNAME :</label> 
				<% String uname = rs.getString("username"); %>
				<input type="text" value="<%=uname%>" name="username" id="username" readonly="readonly">
				<label for="name">NAME :</label>
				<% String name = rs.getString("name"); %>
				<input type="text" value="<%=name%>" name="name" id="name" readonly="readonly"> 
				<label for="age">AGE :</label> 
				<% String age = rs.getString("age"); %> 
				<input type="text" value="<%=age%>" name="age" id="age" readonly="readonly">
				<label for="dob">DOB:</label> 
				<% String dob = rs.getString("dob"); %> 
				<input type="date" value="<%=dob%>" name="dob" id="dob" readonly="readonly"> 
				<label for="email">EMAIL ID :</label> 
				<% String email = rs.getString("email"); %>
				<input type="email"  value="<%=email%>"name="email" id="email" readonly="readonly">
				<label for="phone">PHONE NO :</label>
				<% String pnum = rs.getString("phone"); %>
				<input type="text" value="<%=pnum%>"name="phone" id="phone" readonly="readonly"> 
				<label for="bloodgroup">BLOOD GROUP :</label> 
				<% String bgroup = rs.getString("blood_group"); %>
				<input type="text" value="<%=bgroup%>"name="blood_group" id="blood_group" readonly="readonly"> 
				<label for="pincode">PINCODE :</label>
				<% String pincode = rs.getString("pincode"); %>
				<input type="text" value="<%=pincode%>" name="pincode" id="pincode" readonly="readonly">
				<label for="status">CURRENT STATUS :</label> 
				<% String status = rs.getString("status"); %>
				<input type="text" value="<%=status%>"name="status" id="status" readonly="readonly"> <br> <br>
				<button name="donateebutton" value="donatebutton"
					class="btn btn-primary btn-sm update-btn">DONATE</button>
				<button name="receivebutton" value="receivebutton"
					class="btn btn-danger btn-sm delete-btn">RECEIVE</button>

			</div>
			<%
			}
      	} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
      	%>
		</form>
		
	</div>
</body>
</html>