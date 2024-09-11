package mp;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/SearchItemServlet")
public class SearchItemServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 String itemTag = request.getParameter("itemTag");
 String tableName = request.getParameter("tableName");
 Connection conn = null;
 PreparedStatement stmt = null;
 ResultSet rs = null;
 try {
 Class.forName("com.mysql.cj.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/item_locator", "root", 
"shang08");
 String sql = "SELECT * FROM " + tableName + " WHERE item_tag = ?";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, itemTag);
 rs = stmt.executeQuery();
 if (rs.next()) {
 request.setAttribute("itemName", rs.getString("item_name"));
 request.setAttribute("itemTag", rs.getString("item_tag"));
 request.setAttribute("tableName", tableName);
 request.getRequestDispatcher("SearchResult.jsp").forward(request, response);
 } else {
 response.sendRedirect("SearchItem.jsp?error=1");
 }
 } catch (ClassNotFoundException | SQLException e) {
 e.printStackTrace();
 response.sendRedirect("SearchItem.jsp?error=1");
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
