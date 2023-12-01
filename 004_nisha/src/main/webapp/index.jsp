<<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  
  <title>Blood Bank by Nisha</title>
  <style type="text/css">
body {
  font-family: Arial, sans-serif;
  background-image: url('./images/BB1.jpg');
  background-size: cover;
  background-position: center;
  margin: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.login-container {
  background-color: rgba(255, 255, 255, 0.9); 
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  width: 320px;
}
h2 {
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

button {
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

button:hover {
  background-color: #0056b3;
}

.register-link {
  display: block;
  margin-top: 10px;
  text-align: center;
  color: red;
  text-decoration: none;
}

.register-link:hover {
  text-decoration: underline;
}
	</style>
</head>
<body>

  <div class="login-container">
    <h2><center>USER LOGIN</center></h2>
    <form action="UserloginController" method="post">
      <div class="input-container">
        <i class="fas fa-user"></i>
        <input name="username" type="text" id="username" placeholder="Enter Username" required>
      </div>
      <div class="input-container">
        <i class="fas fa-unlock"></i>
        <input name="password" type="password" id="password" placeholder="Enter Password" required>
      </div>
      <button id="loginButton">Login</button>
      <a class="register-link" href="register.jsp">Dont have a account? Register as a new user</a>
    </form>
  </div>
  <script>
    const loginButton = document.getElementById("loginButton");
    
    loginButton.addEventListener("click", () => {
      const username = document.getElementById("username").value;
      const password = document.getElementById("password").value;
      
      // You can add your authentication logic here.
      // For demonstration purposes, let's just display an alert.
      if (username && password) {
        alert("Logged in successfully!");
      } else {
        alert("Please enter both username and password.");
      }
    });
  </script>
</body>
</html>
