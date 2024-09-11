<!DOCTYPE html>
<html>
<head>
 <title>Insert Success</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background: url('https://encryptedtbn0.gstatic.com/images?q=tbn:ANd9GcQI2MApcA5MpWZofmRot_05lDqDSU0m1BIt-MiyJ0FBg&s') no-repeat center center fixed;
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
 .success-container {
 position: relative;
 z-index: 2;
 background-color: rgba(255, 255, 255, 0.9); /* White background with 
slight opacity */
 padding: 20px;
 border-radius: 8px;
 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
 text-align: center;
 }
 h2 {
 margin-bottom: 20px;
 }
 p {
 font-size: 18px;
 color: #333333;
 margin-bottom: 20px;
 }
 .redirect-button {
 background-color: #4caf50;
 color: white;
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 transition: background-color 0.3s;
 text-decoration: none;
 margin-bottom: 10px;
 display: inline-block;
 }
 .redirect-button:hover {
 background-color: #45a049;
 }
 </style>
</head>
<body>
 <div class="overlay"></div>
 <div class="success-container">
 <h2>Item Inserted Successfully</h2>
 <p>Add more items?</p>
 <a href="insert.jsp" class="redirect-button">Add Item</a>
 <p>Return to home?</p>
 <a href="AdminHome.jsp" class="redirect-button">Home</a>
 </div>
</body>
</html>
