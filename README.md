# Item_Locator
Item Locator - Uses tags to help users find commonly lost items.


The Item Locator project is designed to help users efficiently find their items within a 
database, featuring distinct segments for user and admin functionalities.


User Segment:
Login Page: Users can securely log in with their credentials to access the system.
Registration Page: New users can create an account, providing necessary details to generate 
their login credentials. After registration, users are redirected to the login page.
Feedback Page: Users can submit feedback regarding any issues or suggestions for the 
project, which is then reviewed by the admin.
Search Item Page: This is the main interface for users. Users enter the item tag and select the 
table name to perform a search. Upon clicking the search button, the system queries the 
database. If the item is found, a success message is displayed; otherwise, an error message is 
shown. Users can then exit this page and return to the main project page.


Admin Segment:
Login Page: Admins can log in with a unique username and password. There is no 
registration page as there is only one administrator.
Home Page: Upon logging in, admins are taken to a dashboard that provides access to various 
database management operations:
Insert: Admins can add new items to the database based on user demand.
Delete: Admins can remove items from the database as required.
Update: Admins can modify item details according to user preferences.
Display: Admins can view all tables and their contents within the database.
Feedback: Admins can review and respond to feedback submitted by users.
After performing any CRUD (Create, Read, Update, Delete) operation, admins can easily 
navigate back to the home page.


Technical Details:
The project is implemented using Java, JSP, and Servlets for dynamic web content, with 
HTML and CSS for structuring and styling the web pages. Background images and other 
design elements are used to enhance the visual appeal and interactivity of the project.
This comprehensive project integrates both front-end and back-end development along with 
database connectivity, making it a robust full-stack application capable of handling various 
tasks related to item location and management.
