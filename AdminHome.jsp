<!DOCTYPE html>
<html>
<head>
 <title>Admin Home</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background: url('https://thumbs.dreamstime.com/b/cyber-screen-bluehacker-digital-text-motion-graphic-background-backdrop-171221464.jpg') no-repeat 
center center fixed;
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
 max-width: 800px;
 margin: 50px auto;
 padding: 20px;
 background-color: rgba(255, 255, 255, 0.9); /* White background with 
slight opacity */
 border-radius: 8px;
 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
 }
 h2 {
 margin-bottom: 20px;
 color: #333333;
 }
 .welcome-message {
 margin-bottom: 30px;
 font-size: 24px;
 color: #333333;
 }
 .operation-container {
 display: flex;
 justify-content: space-between;
 flex-wrap: wrap;
 }
 .operation-card {
 width: 45%;
 margin-bottom: 20px;
 padding: 20px;
 background-color: #f2f2f2;
 border-radius: 8px;
 box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
 transition: transform 0.3s ease;
 }
 .operation-card:hover {
 transform: translateY(-5px);
 background-color: #e0e0e0; /* Change background color on hover */
 }
 .operation-title {
 font-size: 20px;
 margin-bottom: 10px;
 color: #333333;
 }
 .operation-description {
 font-size: 16px;
 color: #666666;
 }
 .operation-link {
 display: block;
 margin-top: 20px;
 text-decoration: none;
 color: #4caf50;
 font-weight: bold;
 text-align: center;
 transition: color 0.3s ease;
 }
 .operation-link:hover {
 color: #45a049;
 }
 </style>
</head>
<body>
 <div class="overlay"></div>
 <div class="container">
 <h2 align="center">Welcome Admin</h2>
 <p class="welcome-message" align="center">What would you like to do 
today?</p>
 <div class="operation-container">
 <div class="operation-card" align="center">
 <div class="operation-title">Insert Item</div>
 <div class="operation-description">Add a new item to the 
database.</div>
 <a href="insert.jsp" class="operation-link">Insert Item</a>
 </div>
 <div class="operation-card" align="center">
 <div class="operation-title">Delete Item</div>
 <div class="operation-description">Remove an item from the 
database.</div>
 <a href="delete.jsp" class="operation-link">Delete Item</a>
 </div>
 <div class="operation-card" align="center">
 <div class="operation-title">Display Database</div>
 <div class="operation-description">View all items in the 
database.</div>
 <a href="display.jsp" class="operation-link">Display Database</a>
 </div>
 <div class="operation-card" align="center">
 <div class="operation-title">Update Item</div>
 <div class="operation-description">Modify details of an existing 
item.</div>
 <a href="update.jsp" class="operation-link">Update Item</a>
 </div>
 <div class="operation-card" align="center">
 <div class="operation-title">Check Feedback</div>
 <div class="operation-description">View feedback from users.</div>
 <a href="showfeedbacks.jsp" class="operation-link">Check 
Feedback</a>
 </div>
 </div>
 </div>
</body>
</html>
