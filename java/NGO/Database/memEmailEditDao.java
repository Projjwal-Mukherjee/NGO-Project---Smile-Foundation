package NGO.Database;
import java.sql.*;

import NGO.Bean.memEmailEditBean;
public class memEmailEditDao {
	public boolean validate(memEmailEditBean mne) throws Exception{
		boolean status = false;
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from ngo_members where emailid=?");
			ps.setString(1,mne.getNewEmail());
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				status = true;
			}
			else {
				PreparedStatement ps2 = conn.prepareStatement("update ngo_members set emailid=? where emailid=?");
				ps2.setString(1,mne.getNewEmail());
				ps2.setString(2,mne.getOldEmail());
				int i = ps2.executeUpdate();
				System.out.println(i+" emailid updated where name = "+mne.getOldEmail());
			}
		}
		catch(Exception e) {
			System.out.println("SQL exception:"+e.getMessage());
		}
		return status;
	}
}
