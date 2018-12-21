package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.TaiKhoan;

import connectToDatabase.connectToDatabase;

public class TaiKhoanDAO {
	
	public boolean UpdateTaiKhoan(TaiKhoan newtk ) throws Exception {
        String sql = "update TaiKhoan set P_assword=?, HoTen=?, GioiTinh=?, NgaySinh=? , DiaChi=? , IdType=?, Avatar=?  where Username=?";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1, newtk.getP_assword());
        pst.setString(2, newtk.getHoTen());
        pst.setString(3, newtk.getGioiTinh());
        pst.setString(4, newtk.getNgaySinh());
        pst.setString(5, newtk.getDiaChi());
        pst.setString(6, newtk.getIdType());
        pst.setString(7, newtk.getAvatar());
        pst.setString(8, newtk.getUsername());
        return pst.executeUpdate() > 0;
    }
	
	
	public boolean insertNew(TaiKhoan sp) throws Exception {
        String sql = "insert into TaiKhoan values(?,?,?,?,?,?,?,?)";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1, sp.getUsername());
        pst.setString(2, sp.getP_assword());
        pst.setString(3, sp.getHoTen());
        pst.setString(4, sp.getGioiTinh());
        pst.setString(5, sp.getNgaySinh());
        pst.setString(6, sp.getDiaChi());
        pst.setString(7, sp.getIdType());
        pst.setString(8, sp.getAvatar());

        return pst.executeUpdate() > 0;

    }
	public TaiKhoan TimTaiKhoan(String username) throws Exception {
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
				String  Avatar=result.getString("Avatar");					
				new  TaiKhoan( Username,P_assword,HoTen,GioiTinh,NgaySinh,DiaChi,IdType,Avatar);			    
				System.out.println(HoTen);
	        }
	        return tk;     
    }
	
	public List<TaiKhoan> getListTaiKhoanUser()throws SQLException 
	{
		
		
		List<TaiKhoan> list= new ArrayList<>();
		try {
			connectToDatabase conn= new connectToDatabase();
			conn.connect();
			ResultSet result= conn.getData("Select * from TaiKhoan where IdType='2'");
			while(result.next()) {
				
				String  Username=result.getString("Username");
				String  P_assword=result.getString("P_assword");
				String  HoTen=result.getString("HoTen");
				String  GioiTinh=result.getString("GioiTinh");
				String   NgaySinh =result.getString("NgaySinh") ;
				String  DiaChi=result.getString("DiaChi");
				String  IdType=result.getString("IdType");
				String  Avatar=result.getString("Avatar");	
				System.out.println(HoTen);
				TaiKhoan tk=new  TaiKhoan( Username,P_assword,HoTen,GioiTinh,NgaySinh,DiaChi,IdType,Avatar);			    
				list.add(tk);
			}
		}
		catch(SQLException e)
		{
			System.out.println("select error\n");
		}
		return list;
	}
	
	public List<TaiKhoan> getListTaiKhoan()throws SQLException 
	{
		
		
		List<TaiKhoan> list= new ArrayList<>();
		try {
			connectToDatabase conn= new connectToDatabase();
			conn.connect();
			ResultSet result= conn.getData("Select * from taikhoan");
			while(result.next()) {
				
				String  Username=result.getString("Username");
				String  P_assword=result.getString("P_assword");
				String  HoTen=result.getString("HoTen");
				String  GioiTinh=result.getString("GioiTinh");
				String   NgaySinh =result.getString("NgaySinh") ;
				String  DiaChi=result.getString("DiaChi");
				String  IdType=result.getString("IdType");
				String  Avatar=result.getString("Avatar");	
				System.out.println(HoTen);
				TaiKhoan tk=new  TaiKhoan( Username,P_assword,HoTen,GioiTinh,NgaySinh,DiaChi,IdType,Avatar);			    
				list.add(tk);
			}
		}
		catch(SQLException e)
		{
			System.out.println("select error\n");
		}
		return list;
	}
	
	public boolean checkLoginAdmin(String  username,String Pass) throws SQLException {
		TaiKhoanDAO tkDAO=new TaiKhoanDAO();
		String a="1";
		for(TaiKhoan ds : tkDAO.getListTaiKhoan()) {
			
			if(ds.getUsername().equals(username) && ds.getP_assword().equals(Pass) && ds.getIdType().equals(a))
			{
				System.out.print("dang nhap thanh cong");
				return true;
			}
		}
		System.out.print("dang nhap that bai");
		return false;
	}

	public boolean checkLoginUser(String  username,String Pass) throws SQLException {
		
		TaiKhoanDAO tkDAO=new TaiKhoanDAO();
		String a="2";
		for(TaiKhoan ds : tkDAO.getListTaiKhoan()) {
			if(ds.getUsername().equals(username) && ds.getP_assword().equals(Pass)&& ds.getIdType().equals(a))
			{
				System.out.print("dang nhap thanh cong");
				return true;
			}
		}
		System.out.print("dang nhap that bai");
		return false;
	}
	
	public boolean deleteTaiKhoan(String  username) throws Exception {
        String sql = "delete from TaiKhoan where Username=?";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1,username);
        return pst.executeUpdate() > 0;
    }	
public TaiKhoanDAO() {}	
 public static void main(String[] args ) throws Exception
 {
		
		 TaiKhoanDAO tkdao = new TaiKhoanDAO();
	        		    
			  tkdao.getListTaiKhoanUser();
	 
 }
 
}

