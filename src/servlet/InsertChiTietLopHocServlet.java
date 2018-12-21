package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ChiTietLopHocDAO;
import model.ChiTietLopHoc;

@WebServlet("/InsertChiTietLopHocServlet")
public class InsertChiTietLopHocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertChiTietLopHocServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
		String	maLop =request.getParameter("maLop");
		String	hocSinh =request.getParameter("hocSinh");
		ChiTietLopHocDAO ct = new ChiTietLopHocDAO();
		ChiTietLopHoc ctlh = new ChiTietLopHoc(maLop,hocSinh);
try {
			
			ct.insertNew(ctlh);	
			RequestDispatcher rd = request.getRequestDispatcher("insertHocSinh.jsp?param1="+ maLop);
			rd.forward(request, response);
		} catch (Exception e) {
			RequestDispatcher rd = request.getRequestDispatcher("insertHocSinh.jsp?param1="+ maLop);
			rd.forward(request, response);
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
