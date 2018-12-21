package dao;

import java.sql.PreparedStatement;
import connectToDatabase.connectToDatabase;
import model.CauHoi;
public class CauHoiDAO {

	public CauHoiDAO () {}
	
	public boolean insertNew(CauHoi newtk) throws Exception {
        String sql = "insert into CauHoi values(?,?,?,?,?,?,?,?)";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1, newtk.getIdCauHoi());
        pst.setString(2, newtk.getMaMonHoc());
        pst.setString(3, newtk.getCauHoi());
        pst.setString(4, newtk.getDapAn1());
        pst.setString(5, newtk.getDapAn2());
        pst.setString(6, newtk.getDapAn3());
        pst.setString(7, newtk.getDapAn4());
        pst.setString(8, newtk.getDapAnDung());


        return pst.executeUpdate() > 0;

    }
	
	public boolean deleteCauHoi(String  idCauHoi) throws Exception {
        String sql = "delete from CauHoi where IdCauHoi=?";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1,idCauHoi);
        return pst.executeUpdate() > 0;
  
    }	
	public boolean UpdateCauHoi( String Username,CauHoi newtk ) throws Exception {
        String sql = "update CauHoi set  MaMonHoc=?, CauHoi=?, DapAn1=? , DapAn2=? , DapAn3=?, DapAn4=?,DapAnDung=? where IdCauHoi=?";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1, newtk.getMaMonHoc());
        pst.setString(2, newtk.getCauHoi());
        pst.setString(3, newtk.getDapAn1());
        pst.setString(4, newtk.getDapAn2());
        pst.setString(5, newtk.getDapAn3());
        pst.setString(6, newtk.getDapAn4());
        pst.setString(7, newtk.getDapAnDung());
        pst.setString(8, newtk.getIdCauHoi());
        return pst.executeUpdate() > 0;
    }
	public static void main(String[] args) throws Exception {
		 String b="1";
		
		CauHoiDAO a = new CauHoiDAO();
		  a.deleteCauHoi(b);
	
	}
}
