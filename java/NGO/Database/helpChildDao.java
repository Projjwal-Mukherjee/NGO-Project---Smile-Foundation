package NGO.Database;
import java.sql.*;
import java.time.LocalDateTime;

import NGO.Bean.helpChildBean;
public class helpChildDao {
	public boolean validate(helpChildBean childbean) throws ClassNotFoundException{
		boolean status = false;
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from child_helpline_table where emailid=? and approval=?");
			ps.setString(1, childbean.getEmail());
			ps.setString(2, "null");
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				status = true;
			}
			else {
				PreparedStatement ps2 = conn.prepareStatement("insert into child_helpline_table values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps2.setString(1, null);
				ps2.setString(2, childbean.getFname());
				ps2.setString(3, childbean.getLname());
				ps2.setString(4, childbean.getAge());
				ps2.setString(5, childbean.getGender());
				ps2.setString(6, childbean.getAdress());
				ps2.setString(7, childbean.getPhno());
				ps2.setString(8, childbean.getIssue());
				ps2.setString(9, childbean.getReporter());
				ps2.setString(10, childbean.getRelation());
				ps2.setString(11, childbean.getEmail());
				ps2.setString(12, childbean.getPhon_reporter());
				ps2.setTimestamp(13, Timestamp.valueOf(LocalDateTime.now()));
				ps2.setString(14,"null");
				int i = ps2.executeUpdate();
				System.out.println(i+" record is added into child_helpline_table ");
			}
			conn.close();
		}
		catch(Exception e) {
			System.out.println("SQL Exception:"+e.getMessage());
		}
		return status;
	}
}
