package NGO.Database;

import java.sql.*;

import NGO.Bean.memNameEditBean;
public class memNameEditDao {
	public boolean validate(memNameEditBean mne) throws Exception{
		boolean status = false;
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from ngo_members where username=?");
			ps.setString(1,mne.getNewName());
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				status = true;
			}
			else {
				PreparedStatement ps2 = conn.prepareStatement("update ngo_members set username=? where username=?");
				ps2.setString(1,mne.getNewName());
				ps2.setString(2,mne.getOldName());
				int i = ps2.executeUpdate();
				System.out.println(i+" username updated where name = "+mne.getOldName());
			}
		}
		catch(Exception e) {
			System.out.println("SQL exception:"+e.getMessage());
		}
		return status;
	}
}
