package mp;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/DisplayServlet")
public class DisplayServlet extends HttpServlet {
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws 
ServletException, IOException {
 String tableChoice = request.getParameter("tableChoice");
 Connection conn = null;
 Statement stmt = null;
 ResultSet rs = null;
 try {
 Class.forName("com.mysql.cj.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/item_locator", "root", 
"shang08");
 stmt = conn.createStatement();
 String query = "SELECT * FROM " + tableChoice;
 rs = stmt.executeQuery(query);
 ResultSetMetaData metaData = rs.getMetaData();
 int columnCount = metaData.getColumnCount();
 StringBuilder output = new StringBuilder();
 output.append("<table border=\"1\">");
 output.append("<tr>");
 for (int i = 1; i <= columnCount; i++) {
 output.append("<th>").append(metaData.getColumnName(i)).append("</th>");
 }
 output.append("</tr>");
 while (rs.next()) {
 output.append("<tr>");
 for (int i = 1; i <= columnCount; i++) {
 output.append("<td>").append(rs.getString(i)).append("</td>");
 }
 output.append("</tr>");
 }
 output.append("</table>");
 request.setAttribute("output", output.toString());
 request.getRequestDispatcher("DisplaySuccess.jsp").forward(request, response);
 } catch (ClassNotFoundException | SQLException e) {
 e.printStackTrace();
 response.sendRedirect("display.jsp?error=1");
 } finally {
 try {
 if (rs != null) {
 rs.close();
 }
 if (stmt != null) {
 stmt.close();
 }
 if (conn != null) {
 conn.close();
 }
 } catch (SQLException e) {
 e.printStackTrace();
 }
 }
 }
}
