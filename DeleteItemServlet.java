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
@WebServlet("/DeleteItemServlet")
public class DeleteItemServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 String itemTag = request.getParameter("itemTag");
 String tableName = request.getParameter("tableName");
 Connection conn = null;
 PreparedStatement stmt = null;
 try {
 Class.forName("com.mysql.cj.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/item_locator", "root", 
"shang08");
 String sql = "DELETE FROM " + tableName + " WHERE item_tag = ?";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, itemTag);
 int rowsAffected = stmt.executeUpdate();
 if (rowsAffected > 0) {
 response.sendRedirect("DeleteSuccess.jsp");
 } else {
 request.setAttribute("errorMessage", "Item not found.");
 request.getRequestDispatcher("delete.jsp").forward(request, response);
 }
 } catch (ClassNotFoundException | SQLException e) {
 e.printStackTrace();
 response.sendRedirect("delete.jsp?error=1");
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
