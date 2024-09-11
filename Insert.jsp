<!DOCTYPE html>
<html>
<head>
 <title>Insert Item</title>
 <style>
 body {
 font-family: Arial, sans-serif;
 background: url('https://cdn-iconspng.flaticon.com/512/8970/8970722.png') no-repeat center center fixed;
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
 .insert-container {
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
 input[type="text"] {
 width: 100%;
 padding: 10px;
 margin: 10px 0;
 border: 1px solid #ccc;
 border-radius: 5px;
 box-sizing: border-box;
 }
 select {
 width: 100%;
 padding: 10px;
 margin: 10px 0;
 border: 1px solid #ccc;
 border-radius: 5px;
 box-sizing: border-box;
 }
 input[type="submit"] {
 background-color: #4caf50;
 color: white;
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 }
 input[type="submit"]:hover {
 background-color: #45a049;
 }
 </style>
</head>
<body>
 <div class="overlay"></div>
 <div class="insert-container">
 <h2>Insert Item</h2>
 <form action="InsertItemServlet" method="post">
 <input type="text" name="itemName" placeholder="Item Name"><br>
 <input type="text" name="itemTag" placeholder="Item Tag"><br>
 <select name="tableName">
 <option value="table1">Table 1</option>
 <option value="table2">Table 2</option>
 <option value="table3">Table 3</option>
 <option value="table4">Table 4</option>
 <option value="table5">Table 5</option>
 </select><br>
 <input type="submit" value="Insert">
 </form>
 </div>
</body>
</html>
