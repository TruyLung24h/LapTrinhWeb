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

import model.TypeAccount;
import dao.TypeAccountDAO;
@WebServlet("/TypeAccount")
public class TypeAccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        listCategory(request, response);
    }
 
    private void listCategory(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	TypeAccountDAO dao = new TypeAccountDAO();
 
        try {
 
            List<TypeAccount> list = dao.getListTypeAccount();
            request.setAttribute("list", list);
 
            RequestDispatcher dispatcher = request.getRequestDispatcher("index2.jsp");
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