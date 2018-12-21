package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ChiTietDeThiDAO;
import model.ChiTietDeThi;


@WebServlet("/InsertChiTietDeThiServlet")
public class InsertChiTietDeThiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public InsertChiTietDeThiServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
		
		String	IdDeThi ="444";
		String	IdCauHoi="11";
		String	Username ="phuoc";
		int	    Time_GioiHanLamBai=30;
		String	Time_BatDau = "2019-4-4";  
		String	Time_KetThuc= "2019-4-5";
		String	DapAn =request.getParameter("dapAn");
		
		
		ChiTietDeThiDAO tkDAO = new ChiTietDeThiDAO();
		ChiTietDeThi tk = new ChiTietDeThi( IdDeThi, IdCauHoi,Username, Time_GioiHanLamBai, Time_BatDau,Time_KetThuc, DapAn);

		try {
			
			tkDAO.insertChiTietDeThi(tk);
			response.sendRedirect("admin");
		} catch (Exception e) {
			response.sendRedirect("main");
			
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
