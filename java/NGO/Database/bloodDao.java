package NGO.Database;
import java.sql.*;
import java.time.LocalDateTime;

import NGO.Bean.bloodBean;
public class bloodDao {
	public void insertBloodDonation(bloodBean bb) {
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("insert into blood_donation values(?,?,?,?,?,?,?)");
			ps.setString(1,null);
			ps.setString(2, bb.getFullname());
			ps.setString(3, bb.getEmail());
			ps.setString(4, bb.getPhno());
			ps.setString(5, bb.getBloodgroup());
			ps.setString(6, bb.getAddress());
			ps.setTimestamp(7, Timestamp.valueOf(LocalDateTime.now()));
			int i = ps.executeUpdate();
			System.out.println(i+" record added into blood_donation");
		}
		catch(Exception e) {
			System.out.println("SQL error:"+e.getMessage());
		}
	}
}
