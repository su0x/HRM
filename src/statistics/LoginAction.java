package statistics;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import statistics.*;

public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String path = request.getContextPath();
		
		String username = request.getParameter("userName");
		String pwd = request.getParameter("password");
		//TODO 1提取表单中的用户名和密码

		UserInfo user =new UserInfo();
		UserDB u = new UserDB();
		user = u.GetUserbyName(username);
		//TODO 2 通过UserDB查找当前用户信息
		int flag=0;//用户不存在为1密码错误为 2
		if(user == null ){
			flag = 1;
		}else if(pwd.equals(user.getUserPwd()) && username.equals(user.getUserName())){
			flag = 0;
		}else{
			flag = 2;
		}
		
		request.getSession().setAttribute("username",username);
		
		//3通过flag的值判断登陆结果
		if(flag==0){
			response.sendRedirect(path+"/index.jsp");
		}else{
			response.sendRedirect(path+"/login/login.jsp?loginflag="+flag);
		}
	}

}
