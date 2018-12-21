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
import model.CauHoi;
import model.MonHoc;

@WebServlet("/TimCauHoiServlet")
public class TimCauHoiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public TimCauHoiServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String	idCauHoi =request.getParameter("idCauHoi");
		try
		{
		
		String sql = "Select *from  CauHoi Where IdCauHoi=?";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1, idCauHoi);
        ResultSet result = pst.executeQuery();
        CauHoi tk =null;
        if (result.next()) {
        	
        	String  IdMonHoc=result.getString("IdCauHoi");
        	String  MaMonHoc=result.getString("MaMonHoc");
        	String  CauHoi=result.getString("CauHoi");
        	String  DapAn1=result.getString("DapAn1");
        	String  DapAn2=result.getString("DapAn2");
        	String  DapAn3=result.getString("DapAn3");
        	String  DapAn4=result.getString("DapAn4");
        	String  DapAnDung=result.getString("DapAnDung");			
			new  CauHoi(  IdMonHoc, MaMonHoc,CauHoi, DapAn1,DapAn2, DapAn3,DapAn4,DapAnDung);
				
	            response.sendRedirect("updateCauHoi.jsp?param1="+ IdMonHoc
	            		+"&param2="+ MaMonHoc
	            		+"&param3="+ CauHoi
	            		+"&param4="+ DapAn1
	            		+"&param5="+ DapAn2
	            		+"&param6="+ DapAn3
	            		+"&param7="+ DapAn4
	            		+"&param8="+ DapAnDung
	            		);	 
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
