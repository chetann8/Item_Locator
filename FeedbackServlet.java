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
@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
 private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
 private static final String DB_URL = "jdbc:mysql://localhost:3306/item_locator";
 private static final String DB_USER = "root";
 private static final String DB_PASSWORD = "shang08";
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws 
ServletException, IOException {
 response.setContentType("text/html;charset=UTF-8");
 String username = request.getParameter("username");
 String complaints = request.getParameter("complaints");
 String suggestions = request.getParameter("suggestions");
 String message;
 try {
 if (insertFeedback(username, complaints, suggestions)) {
 message = "Feedback submitted successfully!";
 request.setAttribute("message", message);
 request.setAttribute("username", username);
 request.setAttribute("complaints", complaints);
 request.setAttribute("suggestions", suggestions);
 request.getRequestDispatcher("FeedbackSuccess.jsp").forward(request, response);
 } else {
 message = "Error submitting feedback! Please try again later.";
 request.setAttribute("message", message);
 request.getRequestDispatcher("feedback.jsp").forward(request, response);
 }
 } catch (Exception e) {
 e.printStackTrace();
 request.setAttribute("message", "An error occurred. Please try again later.");
 request.getRequestDispatcher("feedback.jsp").forward(request, response);
 }
 }
 private boolean insertFeedback(String username, String complaints, String suggestions) throws 
ClassNotFoundException, SQLException {
 Class.forName(JDBC_DRIVER);
 try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, 
DB_PASSWORD);
 PreparedStatement pstmt = connection.prepareStatement("INSERT INTO feedback 
(username, complaints, suggestions) VALUES (?, ?, ?)")) {
 pstmt.setString(1, username);
 pstmt.setString(2, complaints);
 pstmt.setString(3, suggestions);
 return pstmt.executeUpdate() > 0;
 }
 }
}
