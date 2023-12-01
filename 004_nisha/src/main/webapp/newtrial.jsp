<!DOCTYPE html>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="">
<style type="text/css">
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

}
body{
    color: #fff;
    display: flex;
    height: 100vh;
    justify-content: center;
    align-items: center;
    background: linear-gradient(135deg,#e8e9fa,#f30d0dc4);
    padding: 10px;
}
.container{
    max-width: 900px;
    width: 100%;
    padding: 25px 30px ;
    border-radius: 25px;
    background:linear-gradient(135deg,#f30d0dc4,#e8e9fa) ;
}
.container .heading{
    font-size: 25px;
    font-weight: 500;
    position: relative;
    text-align: center;
    padding: 0 0 20px 0;

}
.container .heading::before{
    content: '';
    position: absolute;
    height: 3px;
    left: 0;
    bottom: 0;
    width: 100%;
    background: white;
}
.container form .card-details{
    margin-top: 25px;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;

}
form .card-details .card-box{
    width: calc(100% / 2 - 20px);
    margin-bottom: 15px;
}
.card-details .card-box .details{
    display: block;
    font-weight: 500;
    margin-bottom: 5px;

}
.card-details .card-box input{
    height: 45px;
    width: 250px ;
    outline: none ;
    border-radius:5px ;
    border: 1px solid #0e0d0d; 
    padding-left: 35px;
    font-size: 16px;
    border-bottom-width:2px ;
    transition: all 0.3s ease;
}
.card-details .card-box input:focus,
.card-details .card-box input:valid{
    border-color: chocolate;
}
</style>
</head>
<body>
    <div class="container">
        <div class="heading">USER DETAILS</div>
            <form action="DonateReceiveController" method="post">
    					<% String oldUsername = request.getParameter("username"); %>
            			<input type="text" name="oldusername" value="<%=oldUsername%>" hidden>
            	<div class="card-details">
                    <div class="card-box">
                <%
      	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","nisha");
			String sql = "select * from userinformation where username='"+oldUsername+"'";
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next()){
		%>
                    <div class="card-box">
                        <span class="details">User Name : </span>
                        <% String uname = rs.getString("username"); %>
                        <input type="text"  value="<%=uname%>" name="username" id="username" readonly="readonly" >
                    </div>
                    <div class="card-box">
                        <span class="details">Name : </span>
                        <% String name = rs.getString("name"); %>
                        <input type="text" value="<%=name%>" name="name" id="name" readonly="readonly" >
                    </div>
                    <div class="card-box">
                        <span class="details">Age : </span>
                        <% String age = rs.getString("age"); %>
                        <input type="text" value="<%=age%>" name="age" id="age" readonly="readonly" >
                    </div>
                    <div class="card-box">
                        <span class="details">DOB : </span>
                        <% String dob = rs.getString("dob"); %> 
                        <input type="date" value="<%=dob%>" name="dob" id="dob" readonly="readonly">
                    </div>
                    <div class="card-box">
                        <span class="details">Email : </span>
                        <% String email = rs.getString("email"); %>
                        <input type="email" value="<%=email%>" name="email" id="email" readonly="readonly" >
                    </div>
                    <div class="card-box">
                        <span class="details">Phone no : </span>
                        <% String pnum = rs.getString("phone"); %>
                        <input type="text" value="<%=pnum%>" name="phone" id="phone" readonly="readonly">
                    </div>
                    <div class="card-box">
                        <span class="details">Blood Group : </span>
                        <% String bggroup = rs.getString("blood_group"); %>
                        <input type="text" value="<%=bggroup%>" name="blood_group" id="blood_group" readonly="readonly">
                    </div>
                    <div class="card-box">
                        <span class="details">Pin Code : </span>
                        <% String pincode = rs.getString("pincode"); %>
                        <input type="text" value="<%=pincode%>" name="pincode" id="pincode" readonly="readonly">
                    </div>
                     <div class="card-box">
                        <span class="details">Status : </span>
                        <% String status = rs.getString("status"); %>
                        <input type="text" value="<%=status%>" name="status" id="status" readonly="readonly"><br> <br>
                    </div>
                    <button name="donateebutton" value="donatebutton"
					class="btn btn-primary btn-sm update-btn">Donate</button>
				<button name="receivebutton" value="receivebutton"
					class="btn btn-danger btn-sm delete-btn">Receive</button>
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
    </div>
</body>
</html>