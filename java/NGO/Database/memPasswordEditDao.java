package NGO.Database;
import NGO.Bean.memPasswordEditBean;
import java.sql.*;
public class memPasswordEditDao {
	public boolean validate(memPasswordEditBean mpe) throws Exception{
		boolean status = false;
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from ngo_members where password=?");
			ps.setString(1,mpe.getNewPassword());
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				status = true;
			}
			else {
				PreparedStatement ps2 = conn.prepareStatement("update ngo_members set password=? where password=?");
				ps2.setString(1,mpe.getNewPassword());
				ps2.setString(2,mpe.getOldPassword());
				int i = ps2.executeUpdate();
				System.out.println(i+" emailid updated where name = "+mpe.getOldPassword());
			}
		}
		catch(Exception e) {
			System.out.println("SQL exception:"+e.getMessage());
		}
		return status;
	}

}
