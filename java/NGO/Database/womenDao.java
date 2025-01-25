package NGO.Database;
import java.sql.*;
import java.time.LocalDateTime;

import NGO.Bean.womenBean;
public class womenDao {
	public boolean validate(womenBean womenbean) throws Exception{
		boolean status = false;
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from women_helpline_table where emailid=? and approval=?");
			ps.setString(1, womenbean.getEmail());
			ps.setString(2, "null");
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				status = true;
			}
			else {
				PreparedStatement ps2 = conn.prepareStatement("insert into women_helpline_table values(?,?,?,?,?,?,?,?,?,?,?,?)");
				ps2.setString(1, null);
				ps2.setString(2, womenbean.getName());
				ps2.setString(3, womenbean.getAge());
				ps2.setString(4, womenbean.getAddress());
				ps2.setString(5, womenbean.getRelation());
				ps2.setString(6, womenbean.getComplain());
				ps2.setString(7, womenbean.getIssue());
				ps2.setString(8, womenbean.getComplainer());
				ps2.setString(9, womenbean.getEmail());
				ps2.setString(10, womenbean.getPhno());
				ps2.setTimestamp(11, Timestamp.valueOf(LocalDateTime.now()));
				ps2.setString(12, "null");
				int i = ps2.executeUpdate();
				System.out.println(i+" record added into women_helpline_table");
			}
		}
		catch(Exception e) {
			System.out.println("SQL Exception:"+e.getMessage());
		}
		return status;
	}
	
}
