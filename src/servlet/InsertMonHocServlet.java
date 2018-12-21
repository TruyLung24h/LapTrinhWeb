package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MonHocDAO;
import model.MonHoc;


@WebServlet("/InsertMonHocServlet")
public class InsertMonHocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public InsertMonHocServlet() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");		
		String	idMonHoc =request.getParameter("idMonHoc");
		String	tenMonHoc=request.getParameter("tenMonHoc");
		
		MonHocDAO tkDAO = new MonHocDAO();
		MonHoc tk = new MonHoc(idMonHoc, tenMonHoc);
		
		try {
			
			tkDAO.insertMonHoc(tk);
			RequestDispatcher rd = request.getRequestDispatcher("QuanLyMon.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
