package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MonHocDAO;
import model.MonHoc;

@WebServlet("/UpdateMonHocServlet")
public class UpdateMonHocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;      
    public UpdateMonHocServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
		String	idMonHoc =request.getParameter("idMonHoc");
		String	tenMonHoc=request.getParameter("tenMonHoc");
		
		MonHocDAO tkDAO = new MonHocDAO();
		MonHoc mn = new MonHoc(idMonHoc, tenMonHoc);
		
        try {
            if (tkDAO.UpdateMonHoc(idMonHoc, mn)) {
            	response.sendRedirect("QuanLyMon.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
