package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CauHoiDAO;
import dao.TaiKhoanDAO;
import model.CauHoi;
import model.TaiKhoan;


@WebServlet("/UpdateCauHoiServlet")
public class UpdateCauHoiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateCauHoiServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");    
	    String IdCauHoi   =request.getParameter("idCauHoi");
	    String MaMonHoc   =request.getParameter("maMonHoc");
	    String CauHoi     =request.getParameter("cauHoi");
	    String DapAn1     =request.getParameter("dapAn1");
	    String DapAn2     =request.getParameter("dapAn2");
	    String DapAn3     =request.getParameter("dapAn3");
	    String DapAn4     =request.getParameter("dapAn4");
	    String DapAnDung  =request.getParameter("dapAnDung");
		CauHoiDAO tkDAO = new CauHoiDAO();
		CauHoi tk = new CauHoi(IdCauHoi,MaMonHoc, CauHoi ,DapAn1,DapAn2 ,DapAn3 ,DapAn4 ,DapAnDung );
		
        try {
            tkDAO.UpdateCauHoi(IdCauHoi,tk);
            RequestDispatcher rd = request.getRequestDispatcher("QuanLyCauHoi.jsp");
			rd.forward(request, response);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}	
	

}
