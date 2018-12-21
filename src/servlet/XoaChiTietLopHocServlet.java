package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ChiTietLopHocDAO;


@WebServlet("/XoaChiTietLopHocServlet")
public class XoaChiTietLopHocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public XoaChiTietLopHocServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String	maLop =request.getParameter("maLop");
		String	hocSinh =request.getParameter("hocSinh");
		ChiTietLopHocDAO tk = new ChiTietLopHocDAO(); 
        try {
            tk.deleteChiTietLopHoc(maLop, hocSinh);
            RequestDispatcher rd = request.getRequestDispatcher("QuanLylopHoc.jsp?param1="+ maLop);
			rd.forward(request, response);
			
        } catch (Exception e) {
        	 RequestDispatcher rd = request.getRequestDispatcher("error.jsp?param1="+ maLop +"&param2="+ hocSinh );
 			rd.forward(request, response);
        }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
