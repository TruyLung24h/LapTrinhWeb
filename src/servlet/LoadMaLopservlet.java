package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoadMaLopservlet")
public class LoadMaLopservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoadMaLopservlet() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String	maLop =request.getParameter("maLop");
		 response.sendRedirect("insertHocSinh.jsp?param1="+ maLop);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String	idMonHoc =request.getParameter("idMonHoc");
		 response.sendRedirect("QuanLyCauHoi.jsp?param1="+idMonHoc);
		 
	}

}
