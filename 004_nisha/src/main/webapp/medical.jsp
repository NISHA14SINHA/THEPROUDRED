<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Bank by Nisha</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>
/* Reset some default styles */
* {
    
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f7f7f7;
}

header {
    background-color: #dc3545;
    color: #fff;
    text-align: center;
    padding: 20px;
}

section {
    background-color: #fff;
    margin: 20px;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

h1, h2 {
    color: #333;
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
    height: 30px;
    width: 50% ;
    outline: none ;
    border-radius:5px ;
    border: 1px solid #0e0d0d; 
    padding-left: 35px;
    font-size: 16px;
    border-bottom-width:2px ;
    transition: all 0.3s ease;
}
form .circular-form .circular-title{
   font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
   font-size: 20px;
   font-weight: 500;
   border-bottom: 2px solid;
}
form .circular-form .category{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
    width: 30%;
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
<body>
    <header>
        <h1>Medical History Form</h1>
    </header>

    <section id="donor-section">
            <form action="MedicalHistory" method="post">
            <div class="card-details">
                    <div class="card-box">
                        <span class="details"><b>1. Weight (in kgs) : </span>
                        <input type="text" name="weight" id="weight" placeholder="Enter your Weight" required>
                    </div>
            </div>
            <%String username = request.getParameter("username"); %>
            <input type="text" value="<%=username%>" name="username" hidden>
            <div class="card-details">
                    <div class="card-box">
                        <span class="details"><b>2. Haemoglobin (in g/dl) : </span>
                        <input type="text" name="haemoglobin" id="haemoglobin" placeholder="Enter your Haemoglobin" required>
                    </div>
            </div>
            
             <div class="card-details">
                    <div class="card-box">
                        <span class="details"><b>3. Blood Pressure (in mm Hg) : </span>
                        <input type="text" name="currentbp" id="currentbp" placeholder="Enter your Blood Pressure" required>
                    </div>
            </div>
            
            <div class="card-details">
                    <div class="card-box">
                        <span class="details"><b>4. Pulse Rate (per min) : </span>
                        <input type="text" name="pulserate" id="pulserate" placeholder="Enter your Pulse Rate" required>
                    </div>
            </div>
            
            
            <div class="circular-form">
                        <span class="category-title"><b>5. Have you ever been diagnosed with or received treatment for cancer?</span>
                        <div class="category">
                        <input type="radio" name="cancer-history" value="yes"> Yes
                        <input type="radio" name="cancer-history" value="no"> No
                        </div>
            </div>
            
           
            
            <div class="circular-form">
                        <span class="category-title">6. Do you have a history of heart disease or heart surgery?</span>
                        <div class="category">
                        <input type="radio" name="heart-disease-history" value="yes"> Yes
                        <input type="radio" name="heart-disease-history" value="no"> No
                        </div>
            </div>
            
            <div class="circular-form">
                        <span class="category-title">7. Have you ever been diagnosed with hypertension (high blood pressure)?</span>
                        <div class="category">
                        <input type="radio" name="hypertension-history" value="yes"> Yes
                        <input type="radio" name="hypertension-history" value="no"> No
                        </div>
            </div>
            
            <div class="circular-form">
                        <span class="category-title">8. Do you have diabetes?</span>
                        <div class="category">
                        <input type="radio" name="diabetes-history" value="yes"> Yes
                        <input type="radio" name="diabetes-history" value="no"> No
                        </div>
            </div>
            
            <div class="circular-form">
                        <span class="category-title">9. Have you ever had a stroke?</span>
                        <div class="category">
                        <input type="radio" name="stroke-history" value="yes"> Yes
                        <input type="radio" name="stroke-history" value="no"> No
                        </div>
            </div>
            
             <div class="circular-form">
                        <span class="category-title">10. Taken any Anti-biotic or Aspirin in last 24hrs ?</span>
                        <div class="category">
                        <input type="radio" name="anti-biotic" value="yes"> Yes
                        <input type="radio" name="anti-biotic" value="no"> No
                        </div>
            </div>
            
            <div class="circular-form">
                        <span class="category-title">11. Are you sufferring from any bleeding disorder ?</span>
                        <div class="category">
                        <input type="radio" name="bleed-disorder" value="yes"> Yes
                        <input type="radio" name="bleed-disorder" value="no"> No
                        </div>
            </div>
            
            <div class="circular-form">
                        <span class="category-title">12. Consumed alcohol in last 24hrs ?</span>
                        <div class="category">
                        <input type="radio" name="alcohol" value="yes"> Yes
                        <input type="radio" name="alcohol" value="no"> No
                        </div>
            </div>
            
            <div class="circular-form">
                        <span class="category-title">13. Do you have a history of Hepatitis B , C ?</span>
                        <div class="category">
                        <input type="radio" name="hepatitis" value="yes"> Yes
                        <input type="radio" name="hepatitis" value="no"> No
                        </div>
            </div>
            
            <div class="circular-form">
                        <span class="category-title">14. Have tattoos in last 1 year?</span>
                        <div class="category">
                        <input type="radio" name="tattoos" value="yes"> Yes
                        <input type="radio" name="tattoos" value="no"> No
                        </div>
            </div>
            
            <div class="circular-form">
                        <span class="category-title">15. Have any vaccination like cholera , typhoid , diphtheria , tetanus in last 15 days?</span>
                        <div class="category">
                        <input type="radio" name="vaccination" value="yes"> Yes
                        <input type="radio" name="vaccination" value="no"> No
                        </div>
            </div>

            <div class="button">
         	<input type="submit" value="SUBMIT">
         	</div>
            </form>
      </section>
</body>
</html>
