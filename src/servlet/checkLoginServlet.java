package servlet;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 
import dao.TaiKhoanDAO;
public class checkLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public checkLoginServlet() {
        super();
    }
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		TaiKhoanDAO service = new TaiKhoanDAO();
		
		try {
			if (service.checkLoginAdmin(username, password)) {					           
		            response.sendRedirect("admin.jsp?param1="+username);
			} 

			else {
				if (service.checkLoginUser(username, password)) {
					
					response.sendRedirect("main.jsp?param1="+username);
				} 
				else
				{
				response.sendRedirect("login?err=1");
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
 
}
