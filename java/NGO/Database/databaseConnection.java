package NGO.Database;
import java.sql.*;
public class databaseConnection {
	
	
	public static Connection getConnection() throws Exception{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = null;
		try {
			String url = "jdbc:mysql://localhost:3306/world";
			String username = "root";
			String password = "projjwal@#123";
			conn = DriverManager.getConnection(url,username,password);
			
		}
		catch(Exception e) {
			System.out.println("Database Connection Exception:"+e.getMessage());
		}
		return conn;
	}
}
