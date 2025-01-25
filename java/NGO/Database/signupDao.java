package NGO.Database;
import java.sql.*;
import java.time.LocalDateTime;

import NGO.Bean.signupBean;
public class signupDao {
	private boolean error = false;
	public void setError(boolean err) {
		this.error = err;
	}
	public boolean getError() {
		return error;
	}
	public boolean validate(signupBean signupbean) throws ClassNotFoundException{
		boolean status = false;
		String url = "jdbc:mysql://localhost:3306/world";
		String DatabaseUser = "root";
		String DatabasePassword = "projjwal@#123";
		
		String username = signupbean.getUsername();
		String emailid = signupbean.getEmailid();
		String password = signupbean.getPassword();
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		try {
			Connection conn = DriverManager.getConnection(url,DatabaseUser,DatabasePassword);
			PreparedStatement ps = conn.prepareStatement("select * from ngo_members where username=? or emailid=? ");
			ps.setString(1, username);
			ps.setString(2,emailid);
//			ps.setString(3, password);
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			if(status == false) {
				PreparedStatement ps2 = conn.prepareStatement("insert into ngo_members values(?,?,?,?)");
				ps2.setString(1, null);
				ps2.setString(2,username);
				ps2.setString(3, emailid);
				ps2.setString(4, password);
				int i = ps2.executeUpdate();
				PreparedStatement ps3 = conn.prepareStatement("insert into images values(?,?,?,?)");
				ps3.setString(1, null);
				ps3.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
				ps3.setString(3,username);
				ps3.setString(4,"profileDefault.png");
				int j = ps3.executeUpdate();
				System.out.println(i+" record added in ngo_members");
				System.out.println(j+" record added in images");
				conn.close();
			}
		}
		catch(SQLException e) {
			System.out.println("signupdao"+e.getMessage());
			if(e.getMessage().equals("Duplicate entry '"+username+"' for key 'ngo_members.username_UNIQUE'" ) || e.getMessage().equals("Duplicate entry '"+emailid+"' for key 'ngo_members.emailid_UNIQUE'") || e.getMessage().equals("Duplicate entry '"+password+"' for key 'ngo_members.password_UNIQUE'")){
				this.setError(true);
			}
		}
		
		return status;
	}
}
