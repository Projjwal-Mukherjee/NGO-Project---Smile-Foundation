package NGO.Database;
import java.sql.*;
import NGO.Bean.editBean;
public class editDao {
	public boolean validate(editBean editbean) throws Exception{
		boolean status = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world","root","projjwal@#123");
			
			if(status == false) {
				System.out.println("update section");
				if(editbean.getOldUsername()!=editbean.getUsername()) {
					PreparedStatement ps = conn.prepareStatement("select * from ngo_members where username=? ");
					ps.setString(1, editbean.getUsername());
					ResultSet rs = ps.executeQuery();
					status = rs.next();
					if(status == false) {
						System.out.println("username update!");
						PreparedStatement ps2 = conn.prepareStatement("update ngo_members set username=? where username=?");
						ps2.setString(1,editbean.getUsername());
						ps2.setString(2,editbean.getOldUsername());
						int i = ps2.executeUpdate();
						System.out.println(i+" record username updated in ngo_members username = "+editbean.getOldUsername());
						ps2 = conn.prepareStatement("update images set username=? where username=?");
						ps2.setString(1,editbean.getUsername());
						ps2.setString(2,editbean.getOldUsername());
						i = ps2.executeUpdate();
						System.out.println(i+" record username updated in images username = "+editbean.getOldUsername());
						status = false;
					}
					
				}
				
				
				if(editbean.getOldEmail()!=editbean.getEmail()) {
					PreparedStatement ps = conn.prepareStatement("select * from ngo_members where emailid=? ");
					ps.setString(1, editbean.getEmail());
					ResultSet rs = ps.executeQuery();
					if(status != false) {
						status = rs.next();
					}
					
					if(status == false) {
						System.out.println("email update!");
						PreparedStatement ps4 = conn.prepareStatement("update ngo_members set emailid=? where username=?");
						ps4.setString(1,editbean.getEmail());
						ps4.setString(2,editbean.getUsername());
						int i = ps4.executeUpdate();
						System.out.println(i+" records email updated username = "+editbean.getUsername());
						status= false;
					}
				}
				
				if(editbean.getUrl()!="") {
					System.out.println("url update!");
					PreparedStatement ps3 = conn.prepareStatement("update images set image_url=? where username=?");
					ps3.setString(1,editbean.getUrl());
					ps3.setString(2, editbean.getUsername());
					
					int j = ps3.executeUpdate();
					System.out.println(j+" records URL updated username = "+editbean.getUsername());
					status = false;
				}
				
			}
			
		}catch(SQLException e) {
			System.out.println("SQL error :"+e.getMessage());
		}
		return status;
	}
}
