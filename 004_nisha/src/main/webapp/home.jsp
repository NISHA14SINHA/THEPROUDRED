<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Blood Bank by Nisha</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
  body {
    font-family: Arial, sans-serif;
    /*background-color: #f4f4f4;*/
   background: linear-gradient(135deg,#05073a,#fa0f07ca);
    margin: 0;
    padding: 0;
    background-position: center;
    background-size: cover;
    height: 100vh;
    /*background: black;*/
  }
/*navbar*/
  .navbar {
    background-color: white;
    padding: 15px;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .logo {
    font-size: 24px;
    color: white;
    text-decoration: none;
    font-weight: bold;
  }

  .navbar ul {
    font-size: 28px;
    list-style: none;
    display: flex;
    font-weight: bold;
    margin: 0;
    padding: 0;
  }

  .navbar li {
    margin-right: 15px;
  }

  .navbar li:last-child {
    margin-right: 0;
  }

  .navbar a {
    text-decoration: none;
    color: black;
    transition: color 0.3s;
  }

  .navbar a:hover {
    color: red; /* Lighter shade for hover effect */
  }
  .navbar ul li a{
    text-decoration: none;
    color: black;
    padding: 8px 25px;
    font-size: 30px;
    transition: all .5s ease;
}
.navbar ul li a:hover{
    background-color: crimson;
    color: black;
    box-shadow: 0 0 10px rgb(142, 179, 12);
    }
.lang {
    color: white;
    text-decoration: none;
    font-weight: bold;
    font-size: 24px;
  }
.dropdown-menu {
  background-color: white; /* Background color of dropdown */
  border: none;
  border-radius: 0;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
.dropdown-item {
  color: black; /* Text color of dropdown items */
  padding: 8px 20px;
  font-size: 24px;
  transition: background-color 0.3s, color 0.3s;
}
.dropdown-item:hover {
  background-color: grey; /* Background color on hover */
  color: white; /* Text color on hover */
}
.dropdown-divider {
  border-top: 2px solid #e9ecef; /* Divider line color */
}
/*.container {
  display: flex;
  justify-content: center; 
  align-items: center; 
  max-width: 100%;
}

.image-container {
  float:left;
  display: flex;
  align-items: center;
  gap: 50px;  Adjust the gap between images as needed 
  max-width: 100%;
}

.image-container img {
  max-width: 100%;
  height: 50%;
}*/
#carouselExampleIndicators {
    max-width: 900px; /* Adjust the width as needed */
    margin: 7px auto;
    }
/* Style the carousel images */
.carousel-image {
	width: 150vh; /* 100% */
    height: 75vh;
    background-size: cover;
    background-position: center;
}


/*HOMEPG*/
#HOME{
    display: flex;
    flex-direction: column;
    padding: 20px;
     background: linear-gradient(135deg,#05073a,#dc0606ca);
    /*background-color: mintcream;*/
    text-align: center;
    font-size: 20px;
}
.row{
    display: flex;
}
.box{
    display: flex;
    flex-direction: column;
    width: 390px;
    height: 680px;
    /*background-color: pink;*/
    background: center;
    border: 4px solid white;
    margin: 20px;
    align-items: center;
    gap: 50px;
    
}
.headings{
    color:white;
}
.pictures{
    display:flex;
    flex-wrap: wrap;
    justify-content: space-around;
    box-sizing: border-box;
     
}
.pictures img{
    width: 300px;
    height: 300px;
    margin: 10px;
    max-width: 100%;
    justify-content : center;
    text-align: center;
}
.pictures p{
    font-size: 20px;
    color: white;
    text-align: center;
    font-weight: bold;
    justify-content : center;
}
/* ABOUTME SECTION */
.content {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
}
.profile-pic {
    max-width: 300px;
    margin-right: 20px;
}
.bio {
    flex: 1;
}
.bio h1 {
    color: white;
    font-size: 24px;
    margin-bottom: 10px;
    font-weight: bold;
}
.bio h3 {
    color: white;
    font-size: 24px;
    margin-bottom: 10px;
    font-weight: bold;
}
.bio h4 {
    color: white;
    font-size: 24px;
    margin-bottom: 10px;
    font-weight: bold;
}
.bio p {
    color: white;
    font-size: 20px;
    line-height: 1.5;
}

/* Style the image */
.profile-pic img {
    max-width: 100%;
    height: auto;
    border-radius: 50%;
}
.social-links {
    margin-top: 20px;
}

.social-links a {
    display: inline-block;
    margin-right: 20px;
    text-decoration: none;
    color: white; /* Color for the FontAwesome icons */
    font-size: 30px; /* Adjust the size of the icons */
}
/*information section*/
h1, table {
    margin: 0;
    padding: 0;
}
header {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 20px;
}
.chart {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh; /* This ensures the container takes up the full viewport height */
}
table {
    width: 50%;
    border-collapse: collapse;
    border: 5px solid #ccc;
    background-color: white;
    color: #fff;
}
th {
    background-color: black;
    color: #fff;
    padding: 10px;
    text-align: center;
}
tr:nth-child(even) {
    background-color: #f2f2f2;
}
td {
    padding: 10px;
    text-align: center;
    border: 1px solid #ccc;
    font-weight: bold;
    color: black;
}
td:last-child {
    font-weight: bold;
    color: black;
}

</style>
</head>
<body>
<nav class="navbar">
  <a href="#" class="logo">NISHA SINHA</a>
  <ul>
    <li><a href="#HOME" class="nav-link">HOME</a></li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="loginDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        LOGIN
      </a>
      <div class="dropdown-menu" aria-labelledby="loginDropdown">
        <a class="dropdown-item" href="index.jsp">User Login</a>
        <a class="dropdown-item" href="adminlogin.jsp">Admin Login</a>
      </div>
    </li>
    
    <li><a href="#INFORMATION" class="nav-link">INFORMATION</a></li>
    <li><a href="#ABOUTME" class="nav-link">ABOUT ME</a></li>
  </ul>
  <a href="#" class="lang">En</a>
</nav>
 <marquee><font size="6" color="white"><b>THE RED PROUD</b></font></marquee>
<section id="carousel">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="carousel-image" style="background-image: url('./images/C1.jpg');"></div>
                
            </div>
            <div class="carousel-item">
                <div class="carousel-image" style="background-image: url('./images/C2.jpg');"></div>
                
            </div>
            <div class="carousel-item">
                <div class="carousel-image" style="background-image: url('./images/C3.jpg');"></div>
             
            </div>
        </div>
        <!-- Controls -->
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
</div>
<script>
        var $item = $('.carousel-item');
        var $wHeight = $(window).height();

        $item.height($wHeight);

        var $numberofslides = $('.carousel-item').length;
        var $currentslide = Math.floor((Math.random()* $numberofslides));
        $('.carousel-indicators li').each(function(){
            var $slideValue =$(this).attr('data-slide-to');
            if($currentslide == $slideValue){
                $(this).addClass('active');
                $item.eq($slideValue).addClass('active');
            } else{
                $(this).removeClass('active');
                $item.eq($slideValue).removeClass('active');
            }
        });
        $(window).on('resize', function(){
            $wHeight = $(window).height();
            $item.height($wHeight);
        });

        $('.carousel').carousel({
            interval: 3000,
            pause: "false"
        });
    </script>
</section>


<section id="HOME">
 	<div class="row">
         <div class="box">
           <h1 class="headings">DONATEEE</h1>
           <div class="pictures">
             <img src="./images/1.jpg" alt="Image 1">
             <p>JOIN THE LIFESAVING NETWORK <br>Fuel the force for healthier communities.Embrace the opportunity to transform lives- YOURS and OTHERS.</p>
           </div>
         </div>
         <div class="box">
             <h1 class="headings">DONATEEE</h1>
             <div class="pictures">
              <img src="./images/2.jpg" alt="Image 2">
              <p>LIFE IN EVERY DROP<br> Witness seamless blood tracking that turns hope into reality, connecting heroes with life-saving BLOOD units</p>
             </div>
         </div>
         <div class="box">
           <h1 class="headings">DONATEEE</h1>
           <div class="pictures">
            <img src="./images/3.png" alt="Image 3">
            <p> YOU HAVE THE POWER TO SAVE THE LIFE<br>
            Because the need is constant,the gratification is instant,Give blood</p>
            </div>
         </div>
	</div>
</section>

<section id="INFORMATION">
<header>
        <h1>Blood Group Donation Chart</h1>
    </header>
    <div class="chart">
        <table>
            <thead>
                <tr>
                    <th>DONOR BLOOD TYPE</th>
                    <th>CAN DONATE TO (RECEIVER) </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>A+</td>
                    <td>A+, AB+</td>
                </tr>
                <tr>
                    <td>B+</td>
                    <td>B+, AB+</td>
                </tr>
                <tr>
                    <td>O+</td>
                    <td>A+, B+, AB+, O+</td>
                </tr>
                <tr>
                    <td>AB+</td>
                    <td>AB+</td>
                </tr>
                <tr>
                    <td>A-</td>
                    <td>A+, A-, AB+, AB-</td>
                </tr>
                <tr>
                    <td>B-</td>
                    <td>B+, B-, AB+, AB-</td>
                </tr>
                <tr>
                    <td>O-</td>
                    <td>A+, B+, AB+, O+, A-, B-, AB-, O-</td>
                </tr>
                <tr>
                    <td>AB-</td>
                    <td>AB+, AB-</td>
                </tr>
            </tbody>
        </table>
    </div>
</section>
<section id="ABOUTME">
<div class="content">
        <div class="profile-pic">
            <img src="./images/logo.png" alt="Your Name">
        </div>
        <div class="bio">
        	<h1>ABOUT ME</h1>
            <h1>Hello, I'm NISHA SINHA , student of Thakur College of Science & Commerce. I am excited to share with you my journey and commitment to developing the Blood Bank Management project.</h1>
            <br>
            <h3>PROJECTS GOALS</h3>
            <p>1)Efficient Blood Inventory Management: The primary goal of this project is to create a system that allows blood banks to manage their blood inventory efficiently. This includes tracking donations, categorizing blood types, and ensuring the proper storage and handling of blood units.
			<br>2)Streamlined Donor Management: We aim to simplify the donor registration process, making it easy for individuals to donate blood and for blood banks to maintain donor records.
			<br>3)Real-time Availability: Hospitals and healthcare facilities will benefit from real-time access to blood availability. This means they can quickly locate the required blood type and quantity, reducing response times during emergencies.</p>
            <br>
         	<h4>JOIN ME ON MY SOCIAL MEDIA ACCOUTS</h4>
         <div class="social-links">
        		<a href="https://www.linkedin.com/in/your-linkedin-profile" target="_blank"><i class="fab fa-linkedin"></i></a>
                <a href="https://www.github.com/in/your-github-profile" target="_blank"><i class="fab fa-github"></i></a>
                <a href="https://www.instagram.com/your-instagram-profile" target="_blank"><i class="fab fa-instagram"></i></a>
                <a href="https://www.facebook.com/your-facebook-profile" target="_blank"><i class="fab fa-facebook"></i></a>
                <!-- Add more social media links here -->
         </div>
        </div>
    </div>
</section>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
