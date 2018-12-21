package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.TypeAccount;
import connectToDatabase.connectToDatabase;

public class TypeAccountDAO {
	public List<TypeAccount> getListTypeAccount()throws SQLException 
	{
		
		
		List<TypeAccount> list= new ArrayList<>();
		try {
			connectToDatabase conn= new connectToDatabase();
			conn.connect();
			ResultSet result= conn.getData("Select * from TypeAccount");
			while(result.next()) {	
				String IdType=result.getString("IdType");
				String TenType=result.getString("TenType");							
				TypeAccount tk=new  TypeAccount( IdType,TenType);			    
				list.add(tk);
			}
		}
		catch(SQLException e)
		{
			System.out.println("select error\n");
		}
		return list;
	}
	public TypeAccountDAO() {}
	
		
}
