package NGO.Database;
import java.sql.*;

import NGO.Bean.resetPassAdminBean;
import NGO.Bean.resetPassBean;
public class resetPassDao {
	public void updatePassword(resetPassBean rpb)throws Exception {
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("update ngo_members set password=? where emailid=?");
			ps.setString(1, rpb.getPass());
			ps.setString(2, rpb.getEmail());
			int i = ps.executeUpdate();
			System.out.println(i+"record updated email = "+rpb.getEmail());
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	public void updatePassword(resetPassAdminBean rpab)throws Exception {
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("update admin set password=? where email=?");
			ps.setString(1, rpab.getPass());
			ps.setString(2, rpab.getEmail());
			int i = ps.executeUpdate();
			System.out.println(i+"record updated email = "+rpab.getEmail());
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
