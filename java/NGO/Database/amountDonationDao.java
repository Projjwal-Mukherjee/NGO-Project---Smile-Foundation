package NGO.Database;
import java.sql.*;
import java.time.LocalDateTime;

import NGO.Bean.amountDonateBean;
public class amountDonationDao {
	public void insertAmountDonation(amountDonateBean adb) throws Exception{
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("insert into amount_donation values(?,?,?,?,?,?)");
			ps.setString(1, null);
			ps.setString(2, adb.getName());
			ps.setString(3, adb.getEmail());
			ps.setString(4, adb.getPhno());
			ps.setString(5, adb.getTransactionID());
			ps.setTimestamp(6, Timestamp.valueOf(LocalDateTime.now()));
			int i = ps.executeUpdate();
			System.out.println(i+" record added into amount_donation");
		}catch(Exception  e) {
			System.out.println("SQL error:"+e.getMessage());
		}
	}
}
