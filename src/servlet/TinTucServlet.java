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

@WebServlet("/TinTucServlet")
public class TinTucServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public TinTucServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String	idNews =request.getParameter("idNews");
		TinTucDAO dao = new TinTucDAO();
		 
		 
	        try {
	        
	        	List<TinTuc> list = dao.TimTinTuc(idNews);	        	
	        	request.setAttribute("list", list);
	            RequestDispatcher dispatcher = request.getRequestDispatcher("NoiDungTinTuc.jsp");
	            dispatcher.forward(request, response);
	 
	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw new ServletException(e);
	        } catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	 
}
