package statistics;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterAction
 */
public class RegisterAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("gb2312");
		String path = request.getContextPath();
		int count = 0;
		UserInfo user = new UserInfo();
		UserDB db = new UserDB();
		
		//1将表单中的用户名和密码保存到UserInfo中
		user.setUserName(request.getParameter("userName"));
		user.setUserPwd(request.getParameter("password"));
		
		//count接收数据库执行的返回值
		count = db.Register(user);
		//通过count的值判断是否注册成功
		if(count > 0) {
			PrintWriter out = response.getWriter();
			out.print( "<script language='javascript'>"
					+ "alert('register success!');window.location.href='"+ path + "/login/login.jsp';"
							+ "</script>");
		}
	}

}
