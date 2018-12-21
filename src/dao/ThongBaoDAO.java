package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import  java.sql.Date;
import model.ThongBao;
import connectToDatabase.connectToDatabase;

public class ThongBaoDAO {
	public List<ThongBao> getListThongBao()throws SQLException 
	{
		
		
		List<ThongBao> list= new ArrayList<>();
		try {
			connectToDatabase conn= new connectToDatabase();
			conn.connect();
			
			ResultSet result= conn.getData("Select * from ThongBao " );
			while(result.next()) {
				  String IdThongBao= result.getString("IdThongBao");
				  String NoiDung   = result.getString("NoiDung");
				  String NguoiGui  = result.getString("NguoiGui");
				  String NguoiNhan = result.getString("NguoiNhan");
				  Date   Time_Gui  = result.getDate("Time_Gui");
					    
								
				ThongBao tk=new  ThongBao(IdThongBao,NoiDung,NguoiGui,NguoiNhan,Time_Gui);
				    		    
				list.add(tk);
			}
		}
		catch(SQLException e)
		{
			System.out.println("select error\n");
		}
		return list;
	}
	public ThongBaoDAO() {}
	
		
}

