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

import model.ThongBao;
import dao.ThongBaoDAO;
@WebServlet("/ThongBaoServlet")
public class ThongBaoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        listThongBao(request, response);
    }
 
    private void listThongBao(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	ThongBaoDAO dao = new ThongBaoDAO();
 
        try {
 
            List<ThongBao> list = dao.getListThongBao();
            request.setAttribute("list", list);
 
            RequestDispatcher dispatcher = request.getRequestDispatcher("index4.jsp");
            dispatcher.forward(request, response);
 
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }
}