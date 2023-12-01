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
    <title>Blood Bank by Nisha</title>
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
    background-image: url('./images/BB9.jpg');;
    padding : 10px;
}
.container{
    max-width: 700px;
    width: 100%;
    padding: 25px 30px ;
    border-radius: 25px;
    
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
    width: 100% ;
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
    border-color: cyan;
}
form .circular-form .circular-title{
   font-size: 20px;
   font-weight: 500;
   border-bottom: 2px solid;
}
form .circular-form .category{
    margin-top: 10px;
    margin-bottom: 10px;
    
}
form .button{
    text-align: center;

}
form .button input{
    padding: 10px 0;
    margin-top: 10px;
    height: 100%;
    width: 100%;
    outline: none;
    color: black;
    border: none;
    font-size: 18px;
    font-weight: 500;
    border-radius: 5px;
    letter-spacing: 1px;
    background: white;

}
</style>
</head>
<body>
    <div class="container">
        <div class="heading">USER UPDATION</div>
            <form action="UpdateController" method="post">
             <% String oldUsername = request.getParameter("username"); %>
             <input type="text" name="oldusername" value="<%=oldUsername%>" hidden>
                <%
      	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","nisha");
			String sql = "select * from userinformation where username='"+oldUsername+"'";
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next()){
		%>
                <div class="card-details">
                    <div class="card-box">
                        <span class="details">New User Name : </span>
                        <% String uname = rs.getString("username"); %>
                        <input type="text" value="<%=uname%>" name="newusername" id="newusername" placeholder="Enter username" required>
                    </div>
                    <div class="card-box">
                        <span class="details">New Password : </span>
                        <% String pass = rs.getString("password"); %>
                        <input type="password" value="<%=pass%>" name="newpassword" id="newpassword" placeholder="Enter password" required>
                    </div>
                    <div class="card-box">
                        <span class="details">New Name : </span>
                        <% String name = rs.getString("name"); %>
                        <input type="text" value="<%=name%>" name="newname" id="newname" placeholder="Enter name" required pattern="[A-Za-z\s]+" title="Please enter a valid name it should not contain numeric value or special character" >
                    </div>
                    <div class="card-box">
                        <span class="details">New Age : </span>
                        <% String age = rs.getString("age"); %> 
                        <input type="text" value="<%=age%>" name="newage" id="newage" placeholder="Enter age" required pattern="[1-9][0-9]*" title="Please enter a valid age (greater than 0)" >
                    </div>
                    <div class="card-box">
                        <span class="details">New DOB : </span>
                        <% String dob = rs.getString("dob"); %> 
                        <input type="date" value="<%=dob%>" name="newdob" id="newdob" placeholder="Enter date of birth " required>
                    </div>
                    <div class="card-box">
                        <span class="details">New Email : </span>
                        <% String email = rs.getString("email"); %>
                        <input type="email" value="<%=email%>" name="newemail" id="newemail" placeholder="Enter email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="Please enter a valid email address">
                    </div>
                    <div class="card-box">
                        <span class="details">New Phone no : </span>
                        <% String pnum = rs.getString("phone"); %>
                        <input type="text" value="<%=pnum%>" name="newphone" id="newphone" placeholder="Enter phone number" required pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number">
                    </div>
                    <div class="circular-form">
                        <span class="category-title">New Blood Group</span>
                        <div class="category">
                            <input type="radio" name="newblood_group" value="a positive">A+
                            <input type="radio" name="newblood_group" value="b positive">B+
                            <input type="radio" name="newblood_group" value="o positive">O+
                            <input type="radio" name="newblood_group" value="abpositive">AB+
                            <input type="radio" name="newblood_group" value="a negative">A-
                            <input type="radio" name="newblood_group" value="b negative">B-
                            <input type="radio" name="newblood_group" value="o negative">O-
                            <input type="radio" name="newblood_group" value="abnegative">AB-
                        </div>
                    </div>

                    <div class="card-box">
                        <span class="details">New Pin Code : </span>
                        <% String pincode = rs.getString("pincode"); %>
                        <input type="text" value="<%=pincode%>" name="newpincode" id="newpincode" placeholder="Enter pincode" required pattern="[0-9]{6}" title="Please enter a valid 6 digit Pincode">
                    </div>
                     <div class="button">
                        <input type="submit" value="SUBMIT">
                    </div>
                </div>
            </form>
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
    </div>
</body>
</html>