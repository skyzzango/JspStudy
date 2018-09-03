package example_servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "exaple_servlet.Login_Servlet")
public class Login_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post 호출");

		String name;
		String pass;
		name = request.getParameter("user_id");
		pass = request.getParameter("user_pw");

		System.out.println(name + " / " + pass);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		out.println("<html>");
		out.println("<head><title>로그인</title></head>");
		out.println("<body>");
		out.println("<h2>서버에서 전달 받은 값</h2>");
		out.println("아이디:" + name);
		out.println("비밀번호:" + pass);
		out.println("<input type=\"button\" value=\"뒤로\" onclick=\"history.back();\">");
		out.println("</body>");
		out.println("</html>");

		out.close();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get 호출");
	}
}
