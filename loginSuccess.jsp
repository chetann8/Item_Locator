<!DOCTYPE html>
<html>
<head>
 <title>Login Success</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background:
url('https://as2.ftcdn.net/v2/jpg/05/05/37/09/1000_F_505370998_zkiRZmSKt6em0Ii5RZ2
XjaLhDurQ84xP.jpg') no-repeat center center fixed;
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
 .redirect-button {
 background-color: #4CAF50;
 color: white;
 padding: 14px 20px;
 margin: 10px 0;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 transition: background-color 0.3s;
 text-decoration: none;
 }
 .redirect-button:hover {
 background-color: #45a049;
 }
 /* Style for the feedback button */
 .feedback-button {
 position: absolute;
 top: 20px;
 right: 20px;
 background-color: #007bff; /* Blue */
 color: white;
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 transition: background-color 0.3s;
 text-decoration: none;
 z-index: 2;
 }
 .feedback-button:hover {
 background-color: #0056b3; /* Darker blue on hover */
 }
 </style>
</head>
<body>
 <div class="overlay"></div>
 <div class="success-container">
 <h2>Login Successful!</h2>
 <p>Welcome, <%= request.getParameter("username") %>!</p>
 <a href="SearchItem.jsp" class="redirect-button">Search Item</a>
 </div>
 
 <!-- Feedback Button -->
 <a href="feedback.jsp" class="feedback-button">Give Feedback</a>
</body>
</html>
