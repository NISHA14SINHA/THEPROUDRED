<!DOCTYPE html>
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
    background: linear-gradient(135deg,#e92705,#4b0202c4);
    padding : 10px;
}
.container{
    max-width: 700px;
    width: 100%;
    padding: 25px 30px ;
    border-radius: 25px;
     background: linear-gradient(135deg,#4b0202c4,#e92705);
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
    color: #fff;
    border: none;
    font-size: 18px;
    font-weight: 500;
    border-radius: 5px;
    letter-spacing: 1px;
    background: linear-gradient(135deg,#e92705,#4b0202c4);

}
</style>
</head>
<body>
    <div class="container">
        <div class="heading">USER REGISTRATION</div>
            <form action="SaveeController" method="post">
                <div class="card-details">
                    <div class="card-box">
                        <span class="details">User Name : </span>
                        <input type="text" name="username" id="username" placeholder="Enter your username" required>
                    </div>
                    <div class="card-box">
                        <span class="details">Password : </span>
                        <input type="password" name="password" id="password" placeholder="Enter your password" required>
                    </div>
                    <div class="card-box">
                        <span class="details">Name : </span>
                        <input type="text" name="name" id="name" placeholder="Enter your name" required pattern="[A-Za-z\s]+" title="Please enter a valid name it should not contain numeric value or special character" >
                    </div>
                    <div class="card-box">
                        <span class="details">Age : </span>
                        <input type="text" name="age" id="age" placeholder="Enter your age" required pattern="[1-9][0-9]*" title="Please enter a valid age (greater than 0)" >
                    </div>
                    
                    <div class="card-box">
                        <span class="details">DOB : </span>
                        <input type="date" name="dob" id="dob" placeholder="Enter your date of birth[dd/mm/yyyy]" required>
                    </div>
                    <div class="card-box">
                        <span class="details">Email : </span>
                        <input type="email" name="email" id="email" placeholder="Enter your email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="Please enter a valid email address">
                    </div>
                    <div class="card-box">
                        <span class="details">Phone no : </span>
                        <input type="text" name="phone" id="phone" placeholder="Enter your phone number" required pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number">
                    </div>
                    <div class="circular-form">
                        <span class="category-title">Blood Group</span>
                        <div class="category">
                            <input type="radio" name="blood_group" value="a positive">A+
                            <input type="radio" name="blood_group" value="b positive">B+
                            <input type="radio" name="blood_group" value="o positive">O+
                            <input type="radio" name="blood_group" value="abpositive">AB+
                            <input type="radio" name="blood_group" value="a negative">A-
                            <input type="radio" name="blood_group" value="b negative">B-
                            <input type="radio" name="blood_group" value="o negative">O-
                            <input type="radio" name="blood_group" value="abnegative">AB-
                        </div>
                    </div>

                    <div class="card-box">
                        <span class="details">Pin Code : </span>
                        <input type="text" name="pincode" id="pincode" placeholder="Enter your pincode" required pattern="[0-9]{6}" title="Please enter a valid 6 digit Pincode">
                    </div>
                    <div class="button">
                        <input type="submit" value="Register">
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>