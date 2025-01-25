package NGO.Database;
import java.sql.*;
import NGO.Bean.loginBean;
public class loginDao {			
	public boolean validate(loginBean loginbean) throws ClassNotFoundException{
		boolean status = false;
		String url = "jdbc:mysql://localhost:3306/world";
		String databaseUser = "root";
		String databasePassword = "projjwal@#123";
		
		String username = loginbean.getUsername();
		String password = loginbean.getPassword();
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		try {
			Connection conn = DriverManager.getConnection(url,databaseUser,databasePassword);
			PreparedStatement ps = conn.prepareStatement("select * from ngo_members where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2,password);
			ResultSet rs = ps.executeQuery();
			
			status = rs.next();
			conn.close();
		}
		catch(SQLException e) {
			System.out.println("SQL error:"+e.getMessage());
		}
		return status;
	}
	
}
