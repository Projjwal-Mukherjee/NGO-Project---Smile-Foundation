package NGO.Database;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import NGO.Bean.disasterHelpBean;
public class disasterHelpDao {
	public boolean validate(disasterHelpBean dhb) throws Exception{
boolean status = false;
		
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from disaster_helpline_table where email=? and approval=?");
			ps.setString(1, dhb.getEmail());	
			ps.setString(2, "null");
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				status = true;
			}
			else {
				PreparedStatement ps2 = conn.prepareStatement("insert into disaster_helpline_table values(?,?,?,?,?,?,?,?,?,?)");
				ps2.setString(1, null);
				ps2.setString(2, dhb.getLocation());
				ps2.setString(3, dhb.getDate());
				ps2.setString(4, dhb.getAddress());
				ps2.setString(5, dhb.getDescription());
				ps2.setString(6, dhb.getName());
				ps2.setString(7, dhb.getEmail());
				ps2.setString(8, dhb.getPhno());
				ps2.setTimestamp(9, Timestamp.valueOf(LocalDateTime.now()));
				ps2.setString(10, "null");
				int i = ps2.executeUpdate();
				System.out.println(i+" record added into disaster_helpline_table");
			}
			conn.close();
		}
		catch(SQLException e) {
			System.out.println("SQL Exception:"+e.getMessage());
		}
		
		return status;
	}
}
