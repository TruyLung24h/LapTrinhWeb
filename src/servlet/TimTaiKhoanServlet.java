package servlet;

import java.io.IOException;
import java.nio.charset.Charset;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connectToDatabase.connectToDatabase;
import model.TaiKhoan;


@WebServlet("/TimTaiKhoanServlet")
public class TimTaiKhoanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public TimTaiKhoanServlet() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String	username =request.getParameter("username");
		try
		{
		
		String sql = "Select *from  TaiKhoan Where Username=?";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1, username);
        ResultSet result = pst.executeQuery();
        TaiKhoan tk =null;
        if (result.next()) {
        	
        	String  Username=result.getString("Username");
			String  P_assword=result.getString("P_assword");
			String  HoTen=result.getString("HoTen");
			String  GioiTinh=result.getString("GioiTinh");
			String   NgaySinh =result.getString("NgaySinh") ;
			String  DiaChi=result.getString("DiaChi");
			String  IdType=result.getString("IdType");
			String  Avatar="Avatar";		
			new  TaiKhoan( Username,P_assword,HoTen,GioiTinh,NgaySinh,DiaChi,IdType,Avatar);
	            response.sendRedirect("updateTaiKhoan.jsp?param1="+ username
	            		+"&param2="+ P_assword
	            		+"&param3="+ HoTen
	            		+"&param4="+ GioiTinh
	            		+"&param5="+ NgaySinh
	            		+"&param6="+ DiaChi
	            		+"&param7="+ IdType);
	 
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
