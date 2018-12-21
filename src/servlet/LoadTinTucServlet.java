package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TinTucDAO;
import model.TinTuc;


@WebServlet("/LoadTinTucServlet")
public class LoadTinTucServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoadTinTucServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listTinTuc(request, response);
	}

	private void listTinTuc(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	TinTucDAO dao = new TinTucDAO();
 
        try {
 
            List<TinTuc> list = dao.getListTinTuc();
            request.setAttribute("list", list);
 
            RequestDispatcher dispatcher = request.getRequestDispatcher("TrangChu.jsp");
            dispatcher.forward(request, response);
 
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
