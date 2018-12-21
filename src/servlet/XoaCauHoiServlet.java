package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CauHoiDAO;
import dao.ChiTietLopHocDAO;

@WebServlet("/XoaCauHoiServlet")
public class XoaCauHoiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public XoaCauHoiServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String	idCauHoi =request.getParameter("idCauHoi");
		CauHoiDAO tk = new CauHoiDAO(); 
        try {
            tk.deleteCauHoi(idCauHoi);
            RequestDispatcher rd = request.getRequestDispatcher("QuanLyCauHoi.jsp");
			rd.forward(request, response);
			
        } catch (Exception e) {
        	 RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
 			rd.forward(request, response);
        }
	}
}
