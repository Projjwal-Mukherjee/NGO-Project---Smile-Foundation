package NGO.Database;
import java.sql.*;
import NGO.Bean.adminBean;
public class adminDao {
	public boolean validate(adminBean adminbean) throws Exception {
		boolean status = false;
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select idadmin,email,phno from admin where name=? and password=?");
			ps.setString(1, adminbean.getName());
			ps.setString(2, adminbean.getPassword());
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				adminbean.setId(rs.getString(1));
				adminbean.setEmail(rs.getString(2));
				adminbean.setPhno(rs.getString(3));
				status = true;
			}
			
		}
		catch(Exception e) {
			System.out.println("SQL error:"+e.getMessage());
		}
		
		return status;
	}
}
