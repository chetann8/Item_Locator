package mp;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ShowFeedbacksServlet")
public class ShowFeedbacksServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
 public ShowFeedbacksServlet() {
 super();
 }
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws 
ServletException, IOException {
 response.getWriter().append("Served at: ").append(request.getContextPath());
 }
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws 
ServletException, IOException {
 response.setContentType("text/html;charset=UTF-8");
 PrintWriter out = response.getWriter();
 String jdbcURL = "jdbc:mysql://localhost:3306/item_locator";
 String dbUser = "root";
 String dbPassword = "shang08";
 Connection connection = null;
 Statement statement = null;
 ResultSet resultSet = null;
 try {
 Class.forName("com.mysql.cj.jdbc.Driver");
 connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
 statement = connection.createStatement();
 String sql = "SELECT * FROM feedback";
 resultSet = statement.executeQuery(sql);
 out.println("<html><head><title>All Feedbacks</title>");
 out.println("<style>");
 out.println("body { font-family: Arial, sans-serif; margin: 0; padding: 0; height: 100vh; display: 
flex; justify-content: center; align-items: center; position: relative; overflow: hidden; }");
 out.println(".background { position: absolute; top: 0; left: 0; width: 100%; height: 100%; 
background:url('https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWd
lcy93ZWJzaXRlX2NvbnRlbnQvbHIvczY0LXJvYjgzMTktbWludHktMTEuanBn.jpg.jpg') no-repeat center 
center; background-size: cover; opacity: 0.5; z-index: -1; }");
 out.println(".container { max-width: 800px; margin: auto; background: rgba(255, 255, 255, 
0.9); padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); z-index: 1; }");
 out.println("h1 { color: #333; }");
 out.println("table { width: 100%; border-collapse: collapse; margin-top: 20px; }");
 out.println("th, td { padding: 12px; border: 1px solid #ddd; text-align: left; }");
 out.println("th { background-color: #4CAF50; color: white; }");
 out.println("tr:nth-child(even) { background-color: #f2f2f2; }");
 out.println("</style>");
 out.println("</head><body>");
 out.println("<div class='background'></div>");
 out.println("<div class='container'>");
 out.println("<h1>All Feedbacks</h1>");
 out.println("<table>");
 out.println("<tr><th>Username</th><th>Complaints</th><th>Suggestions</th></tr>");
 while (resultSet.next()) {
 String username = resultSet.getString("username");
 String complaints = resultSet.getString("complaints");
 String suggestions = resultSet.getString("suggestions");
 out.println("<tr><td>" + username + "</td><td>" + complaints + "</td><td>" + suggestions 
+ "</td></tr>");
 }
 out.println("</table>");
 out.println("</div>");
 out.println("</body></html>");
 } catch (Exception e) {
 e.printStackTrace(out);
 } finally {
 try {
 if (resultSet != null) resultSet.close();
 if (statement != null) statement.close();
 if (connection != null) connection.close();
 } catch (Exception e) {
 e.printStackTrace(out);
 }
 }
 }
}
