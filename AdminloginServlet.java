package mp;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 String name = request.getParameter("name");
 String password = request.getParameter("password");
 if ("admin".equals(name) && "shang".equals(password)) {
 response.sendRedirect("AdminHome.jsp");
 } else {
 response.sendRedirect("AdminLoginPage.jsp?error=1");
 }
 }
}
