<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Blood Bank by Nisha</title>
<style type="text/css">
body {
	height: auto;
	width: 170vh;
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
	
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Username</th>
					<th>Persons Unique Id</th>
					<th>Weight(in kgs)</th>
					<th>Haemoglobin(in g/dl)</th>
					<th>Blood Pressure(in mm hg)</th>
					<th>Pulserate</th>
					<th>Cancer</th>
					<th>Heart Disease</th>
					<th>High BP</th>
					<th>Diabates</th>
					<th>Stroke</th>
					<th>Consuming Antibiotic</th>
					<th>Bleeding Disorder</th>
					<th>Consumed Alcohol</th>
					<th>Hepatitis History</th>
					<th>Tattoos</th>
					<th>Had Vaccination</th>
					
				</tr>
			</thead>
			<tbody>
			<%
      	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","nisha");
			String sql = "select * from medicalreport";
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
						<% String uid = rs.getString("personsuniqueid"); %> <%=uid%>
					</td>
					<td>
						<% String wg = rs.getString("weight"); %> <%=wg%>
					</td>
					<td>
						<% String hg = rs.getString("haemoglobin"); %> <%=hg%>
					</td>
					<td>
						<% String bp = rs.getString("bloodpressure"); %> <%=bp%>
					</td>
					<td>
						<% String pr = rs.getString("pulserate"); %> <%=pr%>
					</td>
					<td>
						<% String cancer = rs.getString("cancer"); %> <%=cancer%>
					</td>
					<td>
						<% String heart = rs.getString("heart"); %> <%=heart%>
					</td>
					<td>
						<% String bphis = rs.getString("bphistory"); %> <%=bphis%>
					</td>
					<td>
						<% String db = rs.getString("diabates"); %> <%=db%>
					</td>
					<td>
						<% String str = rs.getString("stroke"); %> <%=str%>
					</td>
					<td>
						<% String antibiotic = rs.getString("antibiotic"); %> <%=antibiotic%>
					</td>
					<td>
						<% String bd = rs.getString("bleedingdisorder"); %> <%=bd%>
					</td>
					<td>
						<% String alcohol = rs.getString("alcohol"); %> <%=alcohol%>
					</td>
					<td>
						<% String hep = rs.getString("hepatitis"); %> <%=hep%>
					</td>
					<td>
						<% String tattoos = rs.getString("tattoos"); %> <%=tattoos%>
					</td>
					<td>
						<% String vacc = rs.getString("vaccination"); %> <%=vacc%>
					</td>
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
					
		

</body>
</html>