<!DOCTYPE html>
<html>
<head>
 <title>New User Registration</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background:
url('https://media.istockphoto.com/id/1146311489/photo/register-button-oncomputerkeyboard.jpg?s=612x612&w=0&k=20&c=1EnEguxyijEYeOI8Hg_BEK0qfs_CnOHyZp5AzN0zLhI=') 
no-repeat center center fixed;
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
 .registration-container {
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
 input[type="text"],
 input[type="password"] {
 width: 100%;
 padding: 10px;
 margin: 10px 0;
 border: 1px solid #ccc;
 border-radius: 5px;
 box-sizing: border-box;
 }
 input[type="submit"] {
 background-color: #4caf50;
 color: white;
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 }
 input[type="submit"]:hover {
 background-color: #45a049;
 }
 .error-message {
 color: red;
 margin-top: 10px;
 }
 </style>
</head>
<body>
 <div class="overlay"></div>
 <div class="registration-container">
 <h2>New User Registration</h2>
 <% if (request.getParameter("error") != null) { %>
 <p class="error-message">Error occurred during registration!</p>
 <% } %>
 <form action="NewUserRegistrationServlet" method="post">
 <input type="text" name="username" placeholder="Username"
required><br>
 <input type="password" name="password" placeholder="Password"
required><br>
 <input type="submit" value="Register">
 </form>
 </div>
</body>
</html>
