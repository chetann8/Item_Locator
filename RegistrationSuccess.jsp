<!DOCTYPE html>
<html>
<head>
 <title>Registration Success</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background:
url('https://static5.depositphotos.com/1029663/414/i/450/depositphotos_4141203-
stock-photo-green-tick-symbol.jpg') no-repeat center center fixed;
 background-size: cover;
 margin: 0;
 padding: 0;
 display: flex;
 justify-content: center;
 align-items: center;
 height: 100vh;
 overflow: hidden;
 position: relative;
 }
 .overlay {
 position: absolute;
 top: 0;
 left: 0;
 right: 0;
 bottom: 0;
 background: rgba(0, 0, 0, 0.5); /* Black background with opacity */
 z-index: 1;
 }
 .success-container {
 position: relative;
 z-index: 2;
 background-color: rgba(255, 255, 255, 0.9); /* White background with 
opacity */
 padding: 20px;
 border-radius: 8px;
 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
 text-align: center;
 }
 h2 {
 margin-bottom: 20px;
 color: #333333; /* Dark gray */
 }
 p {
 font-size: 18px;
 color: #333333; /* Dark gray */
 }
 .button-container {
 margin-top: 20px;
 }
 .redirect-button {
 background-color: #4caf50;
 color: white;
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 text-decoration: none;
 }
 .redirect-button:hover {
 background-color: #45a049;
 }
 </style>
</head>
<body>
 <div class="overlay"></div>
 <div class="success-container">
 <h2>Registration Successful!</h2>
 <p>Your registration was successful. You can now log in using your 
credentials.</p>
 <div class="button-container">
 <a href="UserLoginPage.jsp" class="redirect-button">Login</a>
 </div>
 </div>
</body>
</html>
