<!DOCTYPE html>
<html>
<head>
 <title>User Login</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background: url('https://encryptedtbn0.gstatic.com/images?q=tbn:ANd9GcSgClzbbD0Or25NJ6h7CDRSjdWzwG3oee3uSQ&s') norepeat center center fixed;
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
 .login-container {
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
 .new-user-link {
 margin-top: 20px;
 font-size: 14px;
 }
 </style>
</head>
<body>
 <div class="overlay"></div>
 <div class="login-container">
 <h2>User Login</h2>
 <% if (request.getParameter("error") != null) { %>
 <p class="error-message">Invalid username or password!</p>
 <% } %>
 <form action="UserLoginServlet" method="post">
 <input type="text" name="username" placeholder="Username"
required><br>
 <input type="password" name="password" placeholder="Password"
required><br>
 <input type="submit" value="Login">
 </form>
 <p class="new-user-link">New User? <a href="NewUserRegistration.jsp">Sign 
Up Here</a></p>
 </div>
</body>
</html>
