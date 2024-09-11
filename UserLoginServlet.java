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
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 String username = request.getParameter("username");
 String password = request.getParameter("password");
 Connection conn = null;
 PreparedStatement stmt = null;
 ResultSet rs = null;
 try {
 Class.forName("com.mysql.cj.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/item_locator", "root", 
"shang08");
 String sql = "SELECT * FROM login WHERE username = ? AND password = ?";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, username);
 stmt.setString(2, password);
 rs = stmt.executeQuery();
 if (rs.next()) {
 response.sendRedirect("loginSuccess.jsp?username=" + username);
 } else {
 response.sendRedirect("UserLoginPage.jsp?error=1");
 }
 } catch (ClassNotFoundException | SQLException e) {
 e.printStackTrace();
 response.sendRedirect("UserLoginPage.jsp?error=1");
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
