package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MonHocDAO;

/**
 * Servlet implementation class XoaMonHocServlet
 */
@WebServlet("/XoaMonHocServlet")
public class XoaMonHocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;       
    public XoaMonHocServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String	idMonHoc =request.getParameter("idMonHoc");
        MonHocDAO tk = new MonHocDAO(); 
        try {
            tk.deleteMonHoc(idMonHoc);
            RequestDispatcher rd = request.getRequestDispatcher("QuanLyMon.jsp");
			rd.forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}

}
