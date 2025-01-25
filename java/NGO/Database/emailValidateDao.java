package NGO.Database;
import java.sql.*;

import NGO.Bean.forgetPassAdminBean;
import NGO.Bean.forgetPassBean;
import java.math.*;
public class emailValidateDao {
	public boolean validate(forgetPassBean fpb) throws Exception{
		boolean status = false;
		int random = 0;
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from ngo_members where emailid=?");
			ps.setString(1, fpb.getEmail());
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				status = true;
				
				random = (int) ((Math.random() * 900000) + 100000);
				fpb.setOTP(random+"");
			}
			
			conn.close();
		}
		catch(Exception e) {
			System.out.println("SQL error:"+e.getMessage());
		}
		return status;
	}
	public boolean validate(forgetPassAdminBean fpab) throws Exception{
		boolean status = false;
		int random = 0;
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from admin where email=?");
			ps.setString(1, fpab.getEmail());
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				status = true;
				
				random = (int) ((Math.random() * 900000) + 100000);
				fpab.setOTP(random+"");
			}
			
			conn.close();
		}
		catch(Exception e) {
			System.out.println("SQL error:"+e.getMessage());
		}
		return status;
	}
}
