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
@WebServlet("/InsertItemServlet")
public class InsertServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 String itemName = request.getParameter("itemName");
 String itemTag = request.getParameter("itemTag");
 String tableName = request.getParameter("tableName");
 Connection conn = null;
 PreparedStatement stmt = null;
 try {
 Class.forName("com.mysql.cj.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/item_locator", "root", 
"shang08");
 String sql = "INSERT INTO " + tableName + " (item_name, item_tag) VALUES (?, ?)";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, itemName);
 stmt.setString(2, itemTag);
 stmt.executeUpdate();
 response.sendRedirect("InsertSuccess.jsp");
 } catch (ClassNotFoundException | SQLException e) {
 e.printStackTrace();
 response.sendRedirect("insert.jsp?error=1");
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
