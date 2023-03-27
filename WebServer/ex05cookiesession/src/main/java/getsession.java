
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/getsession")
public class getsession extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 세션 객체 생성
		// 1. 서버에 저장된 데이터 중에서 누구(클라이언트)의 정보를 다뤄야하는지 판단
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		// id값 출력(응답)
		response.setContentType("text/html; Charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("id : " + id);
	}
}
