package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TaiKhoanDAO;


public class XoaTaiKhoanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public XoaTaiKhoanServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String	username =request.getParameter("username");
	        TaiKhoanDAO tk = new TaiKhoanDAO(); 
	        try {
	            tk.deleteTaiKhoan(username);
	            response.sendRedirect("admin");
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
