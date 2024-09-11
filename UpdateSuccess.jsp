<!DOCTYPE html>
<html>
<head>
 <title>Update Success</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 margin: 0;
 padding: 0;
 display: flex;
 justify-content: center;
 align-items: center;
 height: 100vh;
 background:
url('https://miro.medium.com/v2/resize:fit:621/1*8Danc7fX2XzeZyliI-dZtQ.jpeg') norepeat center center fixed;
 background-size: cover;
 }
 .overlay {
 position: absolute;
 top: 0;
 left: 0;
 width: 100%;
 height: 100%;
 background-color: rgba(240, 248, 255, 0.5); /* Light blue with opacity 
*/
 }
 .container {
 z-index: 1;
 background-color: #ffffff;
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
 margin-bottom: 20px;
 color: #007bff; /* Blue */
 }
 .action-links {
 margin-top: 20px;
 }
 .action-links a {
 display: inline-block;
 background-color: #007bff; /* Blue */
 color: #ffffff; /* White */
 padding: 10px 20px;
 border-radius: 5px;
 text-decoration: none;
 margin-right: 10px;
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
 <h2>Item updated successfully!</h2>
 <div class="action-links">
 <a href="update.jsp">Update More Items</a>
 <a href="AdminHome.jsp">Return to Home</a>
 </div>
 </div>
</body>
</html>
