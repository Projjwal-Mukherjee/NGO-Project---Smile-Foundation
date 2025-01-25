package NGO.Database;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.sql.*;
import NGO.Bean.medicalSuppliesBean;
public class medicalSuppliesDao {
	public void insertMedicalSupply(medicalSuppliesBean msb)throws Exception{
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("insert into medical_supplies_donation values(?,?,?,?,?,?,?)");
			ps.setString(1,null);
			ps.setString(2, msb.getFullname());
			ps.setString(3,msb.getEmail());
			ps.setString(4,msb.getPhno());
			ps.setString(5,msb.getAddress());
			ps.setString(6,msb.getMedEquipment());
			ps.setTimestamp(7,Timestamp.valueOf(LocalDateTime.now()));
			int i = ps.executeUpdate();
			System.out.println(i+" record added to medical donation.");
			conn.close();
		}
		catch(Exception e) {
			System.out.println("SQL error:"+e.getMessage());
		}
	}
}
