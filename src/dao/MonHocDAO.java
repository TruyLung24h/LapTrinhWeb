package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.MonHoc;
import connectToDatabase.connectToDatabase;
public class MonHocDAO {

	public boolean UpdateMonHoc( String idMonHoc,MonHoc mn ) throws Exception {
        String sql = "update MonHoc set  TenMonHoc=? where IdMonHoc=?";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1, mn.getTenMonHoc()); 
        pst.setString(2, mn.getIdMonHoc());          
        return pst.executeUpdate() > 0;
    }
	public MonHoc TimMonHoc(String idMonHoc) throws Exception {
		 String sql = "Select *from  MonHoc Where idMonHoc=?";
	        connectToDatabase conn= new connectToDatabase();
	        PreparedStatement pst = conn.connect().prepareStatement(sql);
	        pst.setString(1, idMonHoc);
	        ResultSet result = pst.executeQuery();
	        MonHoc tk =null;
	        if (result.next()) {
	        	
	        	String  TenMonHoc=result.getString("TenMonHoc");
				String  IdMonHoc=result.getString("IdMonHoc");
								
				new   MonHoc(TenMonHoc,IdMonHoc);			    
				
	        }
	        return tk;     
   }
	public boolean insertMonHoc(MonHoc sp) throws Exception {
        String sql = "insert into MonHoc values(?,?)";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1, sp.getIdMonHoc());
        pst.setString(2, sp.getTenMonHoc());        
        return pst.executeUpdate() > 0;
    }
		
	public boolean deleteMonHoc(String  idMonHoc) throws Exception {
        String sql = "delete from MonHoc where idMonHoc=?";
        connectToDatabase conn= new connectToDatabase();
        PreparedStatement pst = conn.connect().prepareStatement(sql);
        pst.setString(1,idMonHoc);
        return pst.executeUpdate() > 0;
    }	
	 public static void main(String[] args ) throws Exception
	 {
			 String	idMonHoc ="1";
		     String	tenMonHoc="2" ;		
			 MonHocDAO tkdao = new MonHocDAO();
		         MonHoc tk =new  MonHoc(idMonHoc,tenMonHoc);			    
				  tkdao.UpdateMonHoc( idMonHoc, tk);
		 
	 }
}
