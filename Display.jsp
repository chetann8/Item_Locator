<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Display Tables</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background:
url('https://store.hp.com/app/assets/images/uploads/prod/what-is-an-amoleddisplay-hero1587503076267939.jpg') no-repeat center center fixed;
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
 select {
 width: 100%;
 padding: 10px;
 margin-bottom: 20px;
 border-radius: 5px;
 border: 1px solid #ccc; /* Light gray */
 box-sizing: border-box;
 }
 input[type="submit"] {
 background-color: #007bff; /* Blue */
 color: #ffffff; /* White */
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 transition: background-color 0.3s;
 }
 input[type="submit"]:hover {
 background-color: #0056b3; /* Darker blue on hover */
 }
 </style>
</head>
<body>
 <div class="overlay"></div>
 <div class="container">
 <h2>Select Display Option</h2>
 <form action="DisplayServlet" method="post">
 <select name="tableChoice">
 <option value="table1">Table 1</option>
 <option value="table2">Table 2</option>
 <option value="table3">Table 3</option>
 <option value="table4">Table 4</option>
 <option value="table5">Table 5</option>
 </select>
 <input type="submit" value="Display">
 </form>
 </div>
</body>
</html>
