package servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connectToDatabase.connectToDatabase;
import model.MonHoc;


@WebServlet("/TimMonHocServlet")
public class TimMonHocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public TimMonHocServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String	idMonHoc =request.getParameter("idMonHoc");
		try
		{
		
		String sql = "Select *from  MonHoc Where IdMonHoc=?";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1, idMonHoc);
        ResultSet result = pst.executeQuery();
        MonHoc tk =null;
        if (result.next()) {
        	
        	String  IdMonHoc=result.getString("IdMonHoc");
			String  TenMonHoc=result.getString("TenMonHoc");
			
			new  MonHoc( IdMonHoc,TenMonHoc);			    
	            response.sendRedirect("updateLopHoc.jsp?param1="+ IdMonHoc
	            		+"&param2="+ TenMonHoc);
	 
	        } 
		}catch (SQLException e) {
	            e.printStackTrace();
	            throw new ServletException(e);
	        } catch (Exception e) {
				
				e.printStackTrace();
			}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
