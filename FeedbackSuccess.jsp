<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Feedback Success</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background:
url('https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy9
3ZWJzaXRlX2NvbnRlbnQvbHIvczY0LXJvYjgzMTktbWludHktMTEuanBn.jpg') no-repeat center 
center fixed;
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
 background: rgba(0, 0, 0, 0.5);
 z-index: 1;
 }
 .success-container {
 position: relative;
 z-index: 2;
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
 p {
 font-size: 18px;
 color: #333333;
 }
 .navigation {
 margin-top: 20px;
 }
 .button {
 background-color: #007bff;
 color: white;
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 text-decoration: none;
 font-size: 16px;
 margin: 5px;
 transition: background-color 0.3s;
 display: inline-block;
 }
 .button:hover {
 background-color: #0056b3;
 }
 </style>
</head>
<body>
 <div class="overlay"></div>
 <div class="success-container">
 <h2>Feedback Submitted Successfully!</h2>
 <p>Username: <%= request.getAttribute("username") %></p>
 <p>Complaints: <%= request.getAttribute("complaints") %></p>
 <p>Suggestions: <%= request.getAttribute("suggestions") %></p>
 <div class="navigation">
 <a href="feedback.jsp" class="button">Give Another Feedback</a>
 <a href="loginSuccess.jsp" class="button">Continue Searching</a>
 </div>
 </div>
</body>
</html>
