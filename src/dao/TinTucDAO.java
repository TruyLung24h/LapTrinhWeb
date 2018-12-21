package dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;
import java.sql.PreparedStatement;
import model.TinTuc;
import connectToDatabase.connectToDatabase;
public class TinTucDAO {
	
	public List<TinTuc> TimTinTuc(String idNews) throws Exception {
		String sql = "SELECT * FROM  TinTuc WHERE IdNews =?" ;
		List<TinTuc> list= new ArrayList<>();
	        connectToDatabase conn= new connectToDatabase();
	        PreparedStatement pst = conn.connect().prepareStatement(sql);
	        pst.setString(1, idNews);
	        ResultSet result = pst.executeQuery();
	        TinTuc tk =null;
	        if (result.next()) {
	        	
	        	 String	IdNews = result.getString("IdNews");
				 String TieuDe = result.getString("TieuDe");
				 String NoiDung   = result.getString("NoiDung");
				 String HinhAnh  = result.getString("HinhAnh");
				 Date Time_Dang   = result.getDate("Time_Dang");
				 String Creator = result.getString("Creator");
							
				tk= new  TinTuc( IdNews,TieuDe ,NoiDung ,HinhAnh ,Time_Dang ,Creator );
				    
				 list.add(tk);
				 System.out.print(tk);
	        }
	        return list;     
    }
	
	public List<TinTuc> getListTinTuc()throws SQLException 
	{
		
		
		List<TinTuc> list= new ArrayList<>();
		try {
			connectToDatabase conn= new connectToDatabase();
			conn.connect();
			
			ResultSet result= conn.getData("Select * from TinTuc " );
			while(result.next()) {
				
				 String	IdNews = result.getString("IdNews");
				 String TieuDe = result.getString("TieuDe");
				 String NoiDung   = result.getString("NoiDung");
				 String HinhAnh  = result.getString("HinhAnh");
				 Date Time_Dang   = result.getDate("Time_Dang");
				 String Creator = result.getString("Creator");
							
				TinTuc tk=new  TinTuc( IdNews,TieuDe ,NoiDung ,HinhAnh ,Time_Dang ,Creator );
				    
				list.add(tk);
			}
		}
		catch(SQLException e)
		{
			System.out.println("select error\n");
		}
		return list;
	}
	public TinTucDAO() {}
	public static void main(String[] args ) throws Exception
	 {
		TinTucDAO a= new TinTucDAO();
		a.TimTinTuc("1");
		
	 }
		
}
