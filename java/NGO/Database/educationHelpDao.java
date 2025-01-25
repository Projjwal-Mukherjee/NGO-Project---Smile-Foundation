package NGO.Database;
import java.sql.*;
import java.time.LocalDateTime;

import NGO.Bean.educationHelpBean;
public class educationHelpDao {
	public boolean validate(educationHelpBean educationhelpbean) throws Exception{
		boolean status = false;
		
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from education_helpline_table where email=? and approval=?");
			ps.setString(1, educationhelpbean.getEmail());	
			ps.setString(2, "null");
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				status = true;
			}
			else {
				PreparedStatement ps2 = conn.prepareStatement("insert into education_helpline_table values(?,?,?,?,?,?,?,?,?,?,?,?)");
				ps2.setString(1, null);
				ps2.setString(2, educationhelpbean.getName());
				ps2.setString(3, educationhelpbean.getAge());
				ps2.setString(4, educationhelpbean.getAddress());
				ps2.setString(5, educationhelpbean.getGender());
				ps2.setString(6, educationhelpbean.getRelationship());
				ps2.setString(7, educationhelpbean.getDescription());
				ps2.setString(8, educationhelpbean.getReportername());
				ps2.setString(9, educationhelpbean.getEmail());
				ps2.setString(10, educationhelpbean.getPhno());
				ps2.setTimestamp(11, Timestamp.valueOf(LocalDateTime.now()));
				ps2.setString(12, "null");
				int i = ps2.executeUpdate();
				System.out.println(i+" record added into education_helpline_table");
			}
			conn.close();
		}
		catch(SQLException e) {
			System.out.println("SQL Exception:"+e.getMessage());
		}
		
		return status;
	}
}
