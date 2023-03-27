
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ex08LoginCheck")
public class ex08LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; Charset=UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("test") && pw.equals("12345")) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			response.sendRedirect("http://localhost:8080/ex05cookiesession/ex08Main.jsp");
		} else {
			response.sendRedirect("http://localhost:8080/ex05cookiesession/ex08LoginForm.html");
		}	
	}
}
