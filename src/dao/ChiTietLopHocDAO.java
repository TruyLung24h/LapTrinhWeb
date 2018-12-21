package dao;

import java.sql.PreparedStatement;

import connectToDatabase.connectToDatabase;
import model.ChiTietLopHoc;

public class ChiTietLopHocDAO {
	public ChiTietLopHocDAO() {}

	
	public boolean deleteChiTietLopHoc(String  maLop, String hocSinh) throws Exception {
        String sql = "delete from ChiTietLopHoc where MaLop=? and HocSinh=?";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1,maLop);
        pst.setString(2,hocSinh);
        return pst.executeUpdate() > 0;
        
        
    }	
	
	public boolean insertNew(ChiTietLopHoc sp) throws Exception {
        String sql = "insert into ChiTietLopHoc values(?,?)";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1, sp.getMaLop());
        pst.setString(2, sp.getUsername());    
        return pst.executeUpdate() > 0;

    }
	
	public static void main(String[] args ) throws Exception
	 {
		String a="M3";
		String b="Lich";
			ChiTietLopHocDAO c = new ChiTietLopHocDAO();		
			c.deleteChiTietLopHoc(a,b);
			
	 }
}
