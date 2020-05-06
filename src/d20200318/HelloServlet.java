package d20200318;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Servlet : 웹에서 동작하는 작은 자바프로그램
// Servlet이 되려면 상속이 필요 : HttpServlet

@WebServlet("/hello.html")
public class HelloServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// req : 요청 객체
		// resp : 응답 객체
		
		PrintWriter out = resp.getWriter();
		
		// html 형식으로 사용 가능
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hello Servlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>Hello Servlet World!!!</h2>");
		out.println("</body>");
		out.println("</html>");
		
	}
	

}
