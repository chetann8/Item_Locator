<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Feedback</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background-image:
url('https://t3.ftcdn.net/jpg/04/09/76/38/360_F_409763869_m3QVL4OELQaLmRU8AEicBlkd
uNlBAMpm.jpg');
 background-size: cover;
 background-repeat: no-repeat;
 background-position: center center;
 background-attachment: fixed;
 margin: 0;
 padding: 0;
 display: flex;
 justify-content: center;
 align-items: center;
 height: 100vh;
 }
 .container {
 background-color: rgba(255, 255, 255, 0.9);
 padding: 20px;
 border-radius: 8px;
 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
 text-align: center;
 width: 400px;
 }
 h2 {
 margin-bottom: 20px;
 color: #333333;
 }
 form {
 display: flex;
 flex-direction: column;
 align-items: center;
 }
 label {
 margin-bottom: 10px;
 color: #333333;
 }
 input[type="text"], textarea {
 width: 100%;
 padding: 10px;
 margin-bottom: 20px;
 border: 1px solid #ccc;
 border-radius: 5px;
 box-sizing: border-box;
 }
 textarea {
 resize: vertical;
 }
 .complaints {
 height: 100px;
 }
 .suggestions {
 height: 100px;
 }
 input[type="submit"] {
 background-color: #007bff;
 color: white;
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 transition: background-color 0.3s;
 }
 input[type="submit"]:hover {
 background-color: #0056b3;
 }
 .message {
 color: red;
 }
 </style>
</head>
<body>
 <div class="container">
 <h2>Feedback</h2>
 <form action="FeedbackServlet" method="post">
 <label for="username">Username:</label>
 <input type="text" id="username" name="username" placeholder="Enter 
your username" required>
 <label for="complaints">Complaints:</label>
 <textarea id="complaints" name="complaints" class="complaints"
placeholder="Enter your complaints" required></textarea>
 <label for="suggestions">Suggestions:</label>
 <textarea id="suggestions" name="suggestions" class="suggestions"
placeholder="Enter your suggestions" required></textarea>
 <input type="submit" value="Submit">
 </form>
 <p class="message">
 <%= request.getAttribute("message") != null ? 
request.getAttribute("message") : "" %>
 </p>
 </div>
</body>
</html>
