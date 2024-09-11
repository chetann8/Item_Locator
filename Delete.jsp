<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Delete Item</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background: url('https://i0.wp.com/www.alphr.com/wpcontent/uploads/2022/09/featured-12.png?fit=650%2C382&ssl=1') no-repeat center 
center fixed;
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
 .form-group {
 margin-bottom: 20px;
 text-align: left;
 }
 label {
 display: block;
 margin-bottom: 5px;
 color: #444444; /* Slightly darker gray */
 }
 input[type="text"],
 select {
 width: 100%;
 padding: 8px;
 border: 1px solid #cccccc; /* Light gray */
 border-radius: 5px;
 box-sizing: border-box;
 }
 .delete-button {
 background-color: #ff4444; /* Red */
 color: white;
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 text-decoration: none;
 transition: background-color 0.3s;
 }
 .delete-button:hover {
 background-color: #cc0000; /* Darker red on hover */
 }
 </style>
</head>
<body>
 <div class="overlay"></div>
 <div class="container">
 <h2>Delete Item</h2>
 <form action="DeleteItemServlet" method="post">
 <div class="form-group">
 <label for="itemTag">Item Tag:</label>
 <input type="text" id="itemTag" name="itemTag" required>
 </div>
 <div class="form-group">
 <label for="tableName">Table Name:</label>
 <select id="tableName" name="tableName" required>
 <option value="table1">Table 1</option>
 <option value="table2">Table 2</option>
 <option value="table3">Table 3</option>
 <option value="table4">Table 4</option>
 <option value="table5">Table 5</option>
 </select>
 </div>
 <button type="submit" class="delete-button">Delete</button>
 </form>
 </div>
</body>
</html>
