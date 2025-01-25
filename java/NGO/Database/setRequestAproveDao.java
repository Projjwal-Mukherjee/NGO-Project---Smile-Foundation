package NGO.Database;

import NGO.Bean.ambulanceBean;
import NGO.Bean.disasterHelpBean;
import NGO.Bean.educationHelpBean;
import NGO.Bean.helpChildBean;
import NGO.Bean.womenBean;
import java.sql.*;
public class setRequestAproveDao {
	//women helpline
	public void setApprove(womenBean wb) {
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("update women_helpline_table set approval=? where emailid=? and approval=?");
			ps.setString(1, "approved");
			ps.setString(2, wb.getEmail());
			ps.setString(3, "null");
			int i = ps.executeUpdate();
			System.out.println(i+" request approved email = "+wb.getEmail());
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	public void setReject(womenBean wb) {
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("update women_helpline_table set approval=? where emailid=? and approval=?");
			ps.setString(1, "rejected");
			ps.setString(2, wb.getEmail());
			ps.setString(3, "null");
			int i = ps.executeUpdate();
			System.out.println(i+" request rejected email = "+wb.getEmail());
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	//help child
	public void setApprove(helpChildBean cb) {
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("update child_helpline_table set approval=? where emailid=? and approval=? ");
			ps.setString(1, "approved");
			ps.setString(2, cb.getEmail());
			ps.setString(3, "null");
			int i = ps.executeUpdate();
			System.out.println(i+" request approved email = "+cb.getEmail());
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	public void setReject(helpChildBean cb) {
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("update child_helpline_table set approval=? where emailid=? and approval=?");
			ps.setString(1, "rejected");
			ps.setString(2, cb.getEmail());
			ps.setString(3, "null");
			int i = ps.executeUpdate();
			System.out.println(i+" request rejected email = "+cb.getEmail());
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	//emergency ambulance
	public void setApprove(ambulanceBean ab) {
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("update emergency_ambulance_table set approval=? where emailid=? and approval=?");
			ps.setString(1, "approved");
			ps.setString(2, ab.getEmail());
			ps.setString(3, "null");
			int i = ps.executeUpdate();
			System.out.println(i+" request approved email = "+ab.getEmail());
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	public void setReject(ambulanceBean ab) {
		try {
			Connection conn = databaseConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("update emergency_ambulance_table set approval=? where emailid=? and approval=?");
			ps.setString(1, "rejected");
			ps.setString(2, ab.getEmail());
			ps.setString(3, "null");
			int i = ps.executeUpdate();
			System.out.println(i+" request rejected email = "+ab.getEmail());
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	//education help
		public void setApprove(educationHelpBean ab) {
			try {
				Connection conn = databaseConnection.getConnection();
				PreparedStatement ps = conn.prepareStatement("update education_helpline_table set approval=? where email=? and approval=?");
				ps.setString(1, "approved");
				ps.setString(2, ab.getEmail());
				ps.setString(3, "null");
				int i = ps.executeUpdate();
				System.out.println(i+" request approved email = "+ab.getEmail());
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		}
		public void setReject(educationHelpBean ab) {
			try {
				Connection conn = databaseConnection.getConnection();
				PreparedStatement ps = conn.prepareStatement("update education_helpline_table set approval=? where email=? and approval=?");
				ps.setString(1, "rejected");
				ps.setString(2, ab.getEmail());
				ps.setString(3, "null");
				int i = ps.executeUpdate();
				System.out.println(i+" request rejected email = "+ab.getEmail());
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		}
		//disaster helpline
				public void setApprove(disasterHelpBean ab) {
					try {
						Connection conn = databaseConnection.getConnection();
						PreparedStatement ps = conn.prepareStatement("update disaster_helpline_table set approval=? where email=? and approval=?");
						ps.setString(1, "approved");
						ps.setString(2, ab.getEmail());
						ps.setString(3, "null");
						int i = ps.executeUpdate();
						System.out.println(i+" request approved email = "+ab.getEmail());
					} catch (Exception e) {
						
						e.printStackTrace();
					}
				}
				public void setReject(disasterHelpBean ab) {
					try {
						Connection conn = databaseConnection.getConnection();
						PreparedStatement ps = conn.prepareStatement("update disaster_helpline_table set approval=? where email=? and approval=?");
						ps.setString(1, "rejected");
						ps.setString(2, ab.getEmail());
						ps.setString(3, "null");
						int i = ps.executeUpdate();
						System.out.println(i+" request rejected email = "+ab.getEmail());
					} catch (Exception e) {
						
						e.printStackTrace();
					}
				}
}
