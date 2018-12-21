package dao;

import java.sql.PreparedStatement;

import connectToDatabase.connectToDatabase;
import model.ChiTietDeThi;

public class ChiTietDeThiDAO {

	public boolean insertChiTietDeThi(ChiTietDeThi sp) throws Exception {
        String sql = "insert into ChiTietDeThi values(?,?,?,?,?,?,?)";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
      
        pst.setString(1, sp.getIdDeThi());
        pst.setString(2, sp.getIdCauHoi());
        pst.setString(3, sp.getUsername());
        pst.setInt(4, sp.getTime_GioiHanLamBai());
        pst.setString(5, sp.getTime_BatDau());
        pst.setString(6, sp.getTime_KetThuc());
        pst.setString(7, sp.getDapAn());
  

        return pst.executeUpdate() > 0;

    }
	public ChiTietDeThiDAO() {}	
	public static void main(String[] args ) throws Exception
	 {
		String	IdDeThi ="1";
		String	IdCauHoi="1";
		String	Username ="phuoc";
		int	    Time_GioiHanLamBai=30;
		String	Time_BatDau = "";    
		String	Time_KetThuc= "";
		String	DapAn ="1";
		ChiTietDeThiDAO tkdao = new ChiTietDeThiDAO();
		ChiTietDeThi tk =new  ChiTietDeThi(	IdDeThi ,
			IdCauHoi,
			Username ,
		    Time_GioiHanLamBai,
			Time_BatDau ,   
			Time_KetThuc, DapAn);
		tkdao.insertChiTietDeThi(tk);
		 
	 }
	 
	
}
