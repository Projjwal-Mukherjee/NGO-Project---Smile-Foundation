package NGO.Database;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import NGO.Bean.medicalHelpBean;
public class medicalHelpDao {
	public boolean validate(medicalHelpBean medicalhelpbean) throws Exception{
		boolean status = false;
		
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from medical_helpline_table where requester_email=? and approval=?");
			ps.setString(1, medicalhelpbean.getEmail());	
			ps.setString(2, "null");
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				status = true;
			}
			else {
				PreparedStatement ps2 = conn.prepareStatement("insert into medical_helpline_table values(?,?,?,?,?,?,?,?,?,?,?)");
				ps2.setString(1, null);
				ps2.setString(2, medicalhelpbean.getOrgname());
				ps2.setString(3, medicalhelpbean.getOrgtype());
				ps2.setString(4, medicalhelpbean.getAddress());
				ps2.setString(5, medicalhelpbean.getEquipment());
				ps2.setString(6, medicalhelpbean.getDescription());
				ps2.setString(7, medicalhelpbean.getName());
				ps2.setString(8, medicalhelpbean.getEmail());
				ps2.setString(9, medicalhelpbean.getPhno());
				ps2.setTimestamp(10, Timestamp.valueOf(LocalDateTime.now()));
				ps2.setString(11, "null");
				int i = ps2.executeUpdate();
				System.out.println(i+" record added into medical_help_table");
			}
			conn.close();
		}
		catch(SQLException e) {
			System.out.println("SQL Exception:"+e.getMessage());
		}
		
		return status;
	}
}
