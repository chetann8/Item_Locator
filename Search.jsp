<!DOCTYPE html>
<html>
<head>
 <title>Search Item</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background:
url('https://static.vecteezy.com/system/resources/thumbnails/002/272/250/small/bro
wser-search-bar-template-simple-minimal-design-with-magnifying-glass-search-iconfree-free-vector.jpg') no-repeat center center fixed;
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
 background: rgba(0, 0, 0, 0.5); /* Black background with opacity */
 z-index: 1;
 }
 form {
 position: relative;
 z-index: 2;
 background-color: rgba(255, 255, 255, 0.9); /* White background with 
opacity */
 padding: 20px;
 border-radius: 8px;
 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
 text-align: center;
 }
 h2 {
 margin-bottom: 20px;
 color: #333333; /* Dark gray */
 }
 label {
 display: block;
 margin-bottom: 10px;
 color: #333333; /* Dark gray */
 }
 input[type="text"], select {
 width: 100%;
 padding: 10px;
 margin-bottom: 20px;
 border: 1px solid #ccc;
 border-radius: 5px;
 box-sizing: border-box;
 }
 input[type="submit"] {
 background-color: #ff4444;
 color: white;
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 }
 input[type="submit"]:hover {
 background-color: #cc0000;
 }
 .error-message {
 color: red;
 margin-top: 10px;
 }
 </style>
</head>
<body>
 <div class="overlay"></div>
 <form action="SearchItemServlet" method="post">
 <h2>Search Item</h2>
 <label for="itemTag">Item Tag:</label>
 <input type="text" id="itemTag" name="itemTag" required><br>
 
 <label for="tableName">Table Name:</label>
 <select id="tableName" name="tableName">
 <option value="select">Select Table</option>
 <option value="table1">Table 1</option>
 <option value="table2">Table 2</option>
 <option value="table3">Table 3</option>
 <option value="table4">Table 4</option>
 <option value="table5">Table 5</option>
 </select><br>
 <input type="submit" value="Search">
 <!-- Display error message if any -->
 <% if (request.getParameter("error") != null) { %>
 <p class="error-message">Item not found.</p>
 <% } %>
 </form>
</body>
</html>
