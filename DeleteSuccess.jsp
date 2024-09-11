<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Delete Success</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background:
url('https://ucprocure.zendesk.com/hc/article_attachments/14325601649428') norepeat center center fixed;
 background-size: cover;
 margin: 0;
 padding: 0;
 display: flex;
 justify-content: center;
 align-items: center;
 height: 100vh;
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
 .container {
 position: relative;
 z-index: 2;
 background-color: rgba(255, 255, 255, 0.9); /* White background with 
slight opacity */
 padding: 20px;
 border-radius: 8px;
 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
 text-align: center;
 width: 400px;
 }
 h2 {
 margin-bottom: 20px;
 color: #333333; /* Dark gray */
 }
 p {
 margin: 10px 0;
 color: #444444; /* Slightly darker gray */
 }
 .action-links {
 margin-top: 20px;
 }
 .action-links a {
 margin-right: 10px;
 padding: 8px 20px;
 background-color: #007bff; /* Blue */
 color: #ffffff; /* White */
 text-decoration: none;
 border-radius: 5px;
 transition: background-color 0.3s;
 }
 .action-links a:hover {
 background-color: #0056b3; /* Darker blue on hover */
 }
 </style>
</head>
<body>
 <div class="overlay"></div>
 <div class="container">
 <h2>Deleted Successfully</h2>
 <p>Delete more items?</p>
 <p>Return to home?</p>
 <div class="action-links">
 <a href="delete.jsp">Remove Item</a>
 <a href="AdminHome.jsp">Home</a>
 </div>
 </div>
</body>
</html>
