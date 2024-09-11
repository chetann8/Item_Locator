<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Update Item</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 position: relative;
 margin: 0;
 padding: 0;
 display: flex;
 justify-content: center;
 align-items: center;
 height: 100vh;
 }
 body::before {
 content: "";
 position: fixed;
 top: 0;
 left: 0;
 width: 100%;
 height: 100%;
 background:
url('https://st.depositphotos.com/1014014/4560/i/450/depositphotos_45606725-stockphoto-updates-loading-concept-illustration-design.jpg') no-repeat center center;
 background-size: cover;
 opacity: 0.5; /* Adjust opacity as needed */
 z-index: -1;
 }
 .container {
 background-color: rgba(255, 255, 255, 0.9); /* Background color with 
opacity */
 padding: 20px;
 border-radius: 8px;
 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
 text-align: center;
 width: 400px;
 z-index: 1;
 }
 h2 {
 margin-bottom: 20px;
 color: #333333; /* Dark gray */
 }
 input[type="text"], select {
 width: calc(100% - 22px);
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
 <div class="container">
 <h2>Update Item</h2>
 <form action="applyupdate.jsp" method="post">
 <input type="text" name="itemTag" placeholder="Item Tag" required>
 <select name="tableName">
 <option value="table1">Table 1</option>
 <option value="table2">Table 2</option>
 <option value="table3">Table 3</option>
 <option value="table4">Table 4</option>
 <option value="table5">Table 5</option>
 </select>
 <input type="submit" value="Update">
 </form>
 </div>
</body>
</html>
