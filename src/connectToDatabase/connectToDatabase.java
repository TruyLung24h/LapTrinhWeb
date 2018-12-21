package connectToDatabase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import java.sql.ResultSet;
import java.sql.SQLException;
public class connectToDatabase {
	public connectToDatabase(){
		
	}
	private final String className = "com.mysql.jdbc.Driver";
    private final String url = "jdbc:mysql://localhost:3306/uy1124";
    private final String user ="root";
    private final String pass ="1234";

    private Connection connection;

    public Connection connect() {
            try {
                    Class.forName(className);
                    connection = DriverManager.getConnection(url, user, pass);
                    System.out.println("Connect success!");
            } catch (ClassNotFoundException e) {
                    System.out.println("Class not found!");
            } catch (SQLException e) {
                    System.out.println("Error connection!");
            }
            return connection;
    }
   
    public ResultSet getData(String sql) {
    	ResultSet rs=null;
    	Statement st;
    	try {
    		st=connection.createStatement();
    		rs=st.executeQuery(sql);
    		}
    	catch(SQLException e) {
    		System.out.println("select error\n");
    	}
    	return rs;
    }
   
    public static void main(String[] args ) throws Exception
    {
   		
    	connectToDatabase a = new connectToDatabase();
    	a.connect();
   	 
    }


}