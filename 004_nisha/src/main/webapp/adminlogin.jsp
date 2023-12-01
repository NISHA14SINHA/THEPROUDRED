<!DOCTYPE html>
<html>
<head>
 	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  
  <title>Blood Bank by Nisha</title>
  <style type="text/css">
body {
  font-family: Arial, sans-serif;
  background-image: url('./images/BB7.png');/* Replace with the actual path to your image */
  background-size: cover;
  background-position: center;
  margin: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

        .login-container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 320px;
            
        }

        .login-container h2 {
            margin-top: 0;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .input-container {
  display: flex;
  align-items: center;
  border: 1px solid #ccc;
  border-radius: 3px;
  margin-bottom: 15px;
}

.input-container i {
  flex: 0 0 auto;
  padding: 10px;
  color: #999;
}

input[type="text"],
input[type="password"] {
  flex: 1;
  padding: 10px;
  border: none;
  font-size: 14px;
}

.login-btn {
  display: block;
  width: 100%;
  padding: 10px;
  background-color: red;
  color: #fff;
  border: none;
  border-radius: 3px;
  font-size: 16px;
  cursor: pointer;
        }

  .login-btn:hover {
  background-color: blue;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>ADMIN LOGIN</h2>
        <form action="AdminLogin" method="post">
            <div class="input-container">
                
                <i class="fas fa-user"></i>
                <input type="text" name="username" id="username" class="form-control" placeholder="Enter the USERNAME " required>
            </div>

            <div class="input-container">
                <i class="fas fa-unlock"></i>
                <input type="password" name="password" id="password" class="form-control" placeholder="Enter the PASSWORD" required>
            </div>

            <input type="submit" value="Login" class="login-btn">
        </form>
    </div>
</body>
</html>
