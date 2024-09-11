<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Display Success</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background: rgba(255, 255, 255, 0.5) 
url('https://c8.alamy.com/comp/2EC5CA3/business-graphs-and-charts-seamlesspattern-with-background-of-colorful-pie-chart-and-bar-graph-histogram-line-andspider-charts-financial-and-busi-2EC5CA3.jpg') no-repeat center center fixed;
 background-size: cover;
 margin: 0;
 padding: 0;
 height: 100vh;
 display: flex;
 justify-content: center;
 align-items: center;
 }
 .dialog-box {
 background-color: #ffffff;
 padding: 20px;
 border-radius: 8px;
 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
 text-align: center;
 width: 80%;
 }
 table {
 width: 100%;
 border-collapse: collapse;
 margin-top: 20px;
 }
 th, td {
 padding: 10px;
 border: 1px solid #dddddd;
 text-align: left;
 }
 th {
 background-color: #f2f2f2; /* Light gray */
 }
 tr:nth-child(even) {
 background-color: #f9f9f9; /* Lighter gray */
 }
 .btn-container {
 margin-top: 20px;
 }
 .redirect-button {
 background-color: #007bff; /* Blue */
 color: #ffffff; /* White */
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 text-decoration: none;
 transition: background-color 0.3s;
 margin-right: 10px;
 }
 .redirect-button:hover {
 background-color: #0056b3; /* Darker blue on hover */
 }
 </style>
</head>
<body>
 <div class="dialog-box">
 <h2>Table Data</h2>
 <%= request.getAttribute("output") %>
 <div class="btn-container">
 <form action="display.jsp" method="get">
 <button type="submit" class="redirect-button">Display 
Other</button>
 </form>
 <br>
 <form action="AdminHome.jsp" method="get">
 <button type="submit" class="redirect-button">Home</button>
 </form>
 </div>
 </div>
</body>
</html>
