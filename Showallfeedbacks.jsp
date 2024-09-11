<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>Feedbacks</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 margin: 0;
 padding: 0;
 height: 100vh;
 display: flex;
 justify-content: center;
 align-items: center;
 position: relative;
 overflow: hidden;
 }
 .background {
 position: absolute;
 top: 0;
 left: 0;
 width: 100%;
 height: 100%;
 background:
url('https://t3.ftcdn.net/jpg/04/09/76/38/360_F_409763869_m3QVL4OELQaLmRU8AEicBlkd
uNlBAMpm.jpg') no-repeat center center;
 background-size: cover;
 opacity: 0.5; /* Adjust opacity as needed */
 z-index: -1;
 }
 .container {
 text-align: center;
 background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent 
background */
 padding: 20px;
 border-radius: 10px;
 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
 }
 h1 {
 color: #333;
 }
 button {
 background-color: #4CAF50;
 color: white;
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 font-size: 16px;
 transition: background-color 0.3s, transform 0.3s;
 }
 button:hover {
 background-color: #45a049;
 transform: scale(1.05);
 }
 form {
 margin-top: 20px;
 }
 </style>
</head>
<body>
 <div class="background"></div>
 <div class="container">
 <h1>Generate all Feedbacks</h1>
 <form action="ShowFeedbacksServlet" method="post">
 <button type="submit">Generate</button>
 </form>
 </div>
</body>
</html>
