package NGO.Database;

import java.sql.*;
import java.time.LocalDateTime;

import NGO.Bean.ambulanceBean;

public class ambulanceDao {
	public boolean validate(ambulanceBean ambulancebean) throws Exception{
		boolean status = false;
		
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from emergency_ambulance_table where emailid=? and approval=?");
			ps.setString(1, ambulancebean.getEmail());	
			ps.setString(2, "null");
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				status = true;
			}
			else {
				PreparedStatement ps2 = conn.prepareStatement("insert into emergency_ambulance_table values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps2.setString(1, null);
				ps2.setString(2, ambulancebean.getFname());
				ps2.setString(3, ambulancebean.getLname());
				ps2.setString(4, ambulancebean.getEmail());
				ps2.setString(5, ambulancebean.getRelation());
				ps2.setString(6, ambulancebean.getAddress());
				ps2.setString(7, ambulancebean.getStreet_adress());
				ps2.setString(8, ambulancebean.getCity());
				ps2.setString(9, ambulancebean.getState());
				ps2.setString(10, ambulancebean.getPostal());
				ps2.setTimestamp(11, Timestamp.valueOf(LocalDateTime.now()));
				ps2.setString(12, ambulancebean.getPhno());
				ps2.setString(13, "null");
				int i = ps2.executeUpdate();
				System.out.println(i+" record added into emergency_ambulance_table");
			}
			conn.close();
		}
		catch(SQLException e) {
			System.out.println("SQL Exception:"+e.getMessage());
		}
		
		return status;
	}
}
