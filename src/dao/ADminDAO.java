package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;

import model.TaiKhoan;
import model.selectADmin;
import connectToDatabase.connectToDatabase;

public class ADminDAO {
	
	
	
	
	public List<selectADmin> getListADmin()throws SQLException 
	{
		
		
		List<selectADmin> list= new ArrayList<>();
		try {
			connectToDatabase conn= new connectToDatabase();
			conn.connect();
			ResultSet result= conn.getData("Select * from taikhoan , TypeAccount Where  taikhoan.IdType =  TypeAccount.IdType ");
			while(result.next()) {
				
				String  Username=result.getString("Username");
				String  P_assword=result.getString("P_assword");
				String  HoTen=result.getString("HoTen");
				String  GioiTinh=result.getString("GioiTinh");
				String  NgaySinh =result.getString("NgaySinh") ;
				String  DiaChi=result.getString("DiaChi");
				String  IdType=result.getString("IdType");
				String  Avatar=result.getString("Avatar");	
				String  TenType=result.getString("TenType");				
				selectADmin tk=new  selectADmin( Username,P_assword,HoTen,GioiTinh,NgaySinh,DiaChi,IdType,Avatar,TenType);			    
				list.add(tk);
			}
		}
		catch(SQLException e)
		{
			System.out.println("select error\n");
		}
		return list;
	}
	
	public selectADmin TimTaiKhoan(String username) throws Exception {
		 String sql = "Select *from  TaiKhoan Where Username=?";
	        connectToDatabase conn= new connectToDatabase();
	        PreparedStatement pst = conn.connect().prepareStatement(sql);
	        pst.setString(1, username);
	        ResultSet result = pst.executeQuery();
	        selectADmin tk =null;
	        if (result.next()) {
	        	
	        	String  Username=result.getString("Username");
				String  P_assword=result.getString("P_assword");
				String  HoTen=result.getString("HoTen");
				String  GioiTinh=result.getString("GioiTinh");
				String   NgaySinh =result.getString("NgaySinh") ;
				String  DiaChi=result.getString("DiaChi");
				String  IdType=result.getString("IdType");
				String  Avatar=result.getString("Avatar");					
				new  TaiKhoan( Username,P_assword,HoTen,GioiTinh,NgaySinh,DiaChi,IdType,Avatar);			    
				
	        }
	        return tk;     
  }
	public ADminDAO() {}
	
		
}

