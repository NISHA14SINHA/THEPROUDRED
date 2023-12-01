<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Responsive Page</title>
<style>
body {
    background-color: #f8f9fa;
}

.container {
    margin-top: 30px;
    width: 100%;
}

.table-container {
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    overflow-x: auto;
    margin-left: auto;
    margin-right: auto;
}

.update-btn,
.delete-btn {
    margin-right: 5px;
}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="table-container">
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
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
                    <th>Actions</th>
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
                            <% String uname = rs.getString("username"); %> <input
                                name="username" type="text" value="<%=uname%>"
                                readonly="readonly">
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
                        <td><button name="updatebutton" value="updatebutton"
                                class="btn btn-primary btn-sm update-btn">Update</button>
                            <button name="deletebutton" value="deletebutton"
                                class="btn btn-danger btn-sm delete-btn">Delete</button>
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
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ea3achBBmJv79GGhRM6Otz4JRNNUALs4bmwj8H7gZGm3ZtqI4WVs1DUEUL5P7h3"
    crossorigin="anonymous"></script>
</body>
</html>
