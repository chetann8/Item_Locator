<!DOCTYPE html>
<html>
<head>
 <title>User & Admin Buttons</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background: url('https://playlh.googleusercontent.com/u3vXOJxglGrCF1w05RyCt7V4BE5B2NN8i7gjALHUWCnC_K_HjN_iJckuPm4Mo7u8OnO=w526-h296-rw') no-repeat center center fixed; 
 background-size: cover;
 margin: 0;
 padding: 0;
 display: flex;
 justify-content: center;
 align-items: center;
 height: 100vh;
 overflow: hidden;
 }
 .overlay {
 position: absolute;
 top: 0;
 left: 0;
 right: 0;
 bottom: 0;
 background: rgba(0, 0, 0, 0.7); /* Black background with opacity */
 z-index: 1;
 }
 .container {
 position: relative;
 z-index: 2;
 background-color: rgba(255, 255, 255, 0.9); /* White background with 
opacity */
 padding: 20px;
 border-radius: 10px;
 text-align: center;
 border: 2px solid #008CBA; /* Blue border */
 }
 .button {
 background-color: #4CAF50;
 border: none;
 color: white;
 padding: 15px 32px;
 text-align: center;
 text-decoration: none;
 display: inline-block;
 font-size: 16px;
 margin: 4px 2px;
 cursor: pointer;
 border-radius: 8px;
 transition-duration: 0.4s;
 }
 .button:hover {
 background-color: #45a049;
 }
 .heading {
 font-size: 28px;
 margin-bottom: 20px;
 }
 </style>
</head>
<body>
 <div class="overlay"></div>
 <div class="container">
 <h1 class="heading">WELCOME TO ITEM LOCATOR</h1>
 <form action="UserLoginPage.jsp" method="post">
 <button class="button">USER</button>
 </form>
 <form action="AdminLoginPage.jsp" method="post">
 <button class="button">ADMIN</button>
 </form>
 </div>
</body>
</html>
