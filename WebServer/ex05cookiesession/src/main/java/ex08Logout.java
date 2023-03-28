
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ex08Logout")
public class ex08Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		// GIT TEST 222
		response.setContentType("text/html; Charset=UTF-8");
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		response.sendRedirect("http://localhost:8080/ex05cookiesession/ex08LoginForm.html");
	}
}
