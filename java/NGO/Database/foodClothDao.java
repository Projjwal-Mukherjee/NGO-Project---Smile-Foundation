package NGO.Database;
import java.sql.*;
import java.time.LocalDateTime;

import NGO.Bean.foodClothBean;
public class foodClothDao {
	public void insertFoodClothDonation(foodClothBean fcb) throws Exception{
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("insert into food_and_cloth_donation values(?,?,?,?,?,?)");
			ps.setString(1,null);
			ps.setString(2, fcb.getFullname());
			ps.setString(3,fcb.getEmail());
			ps.setString(4,fcb.getPhno());
			ps.setString(5,fcb.getAddress());
			ps.setTimestamp(6,Timestamp.valueOf(LocalDateTime.now()));
			int i = ps.executeUpdate();
			System.out.println(i+" record added to food and cloth donation.");
			conn.close();
		}
		catch(Exception e) {
			System.out.println("SQL error:"+e.getMessage());
		}
	}
}
