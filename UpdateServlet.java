package mp;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws 
ServletException, IOException {
 String newItemName = request.getParameter("newItemName");
 String itemTag = request.getParameter("itemTag");
 String tableName = request.getParameter("tableName");
 Connection conn = null;
 PreparedStatement stmt = null;
 try {
 Class.forName("com.mysql.cj.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/item_locator", "root", 
"shang08");
 String sql = "UPDATE " + tableName + " SET item_name = ? WHERE item_tag = ?"; // Assuming 
item_tag is the primary key
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, newItemName);
 stmt.setString(2, itemTag);
 int rowsAffected = stmt.executeUpdate();
 if (rowsAffected > 0) {
 // Redirect to UpdateSuccess.jsp
 response.sendRedirect("UpdateSuccess.jsp");
 } else {
 response.sendRedirect("update.jsp?error=1");
 }
 } catch (ClassNotFoundException | SQLException e) {
 e.printStackTrace();
 response.sendRedirect("update.jsp?error=1");
 } finally {
 try {
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
