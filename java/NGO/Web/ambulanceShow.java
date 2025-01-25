package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.ambulanceBean;
import NGO.Database.setRequestAproveDao;
import NGO.Email.requestApprovedMessage;


public class ambulanceShow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ambulanceShow() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ambulanceBean ab = new ambulanceBean();
		ab.setEmail(request.getParameter("email"));
		String id = request.getParameter("id");
		String flag = request.getParameter("approveflag");
		System.out.println("flag = "+flag);
		if(flag!=null) {
			System.out.println("flag != null");
			if(flag.equals("approved")) {
				System.out.println("approved");
				requestApprovedMessage RAM = new requestApprovedMessage();	
				RAM.sendEmail(ab);
				if(ab.getError()) {
					System.out.println("rejected");
					setRequestAproveDao sa = new setRequestAproveDao();
					sa.setReject(ab);
					HttpSession session = request.getSession();
					session.setAttribute("approvalflag", "false");
					response.sendRedirect("NGO & Waste/admindashboard/emergencyAmbulanceDetails.jsp");
				}
				else {
					setRequestAproveDao sa = new setRequestAproveDao();
					sa.setApprove(ab);
					HttpSession session = request.getSession();
					session.setAttribute("approvalflag", "true");
					response.sendRedirect("NGO & Waste/admindashboard/emergencyAmbulanceDetails.jsp");
				}
			}
			else if(flag.equals("rejected")) {
				System.out.println("rejected");
				setRequestAproveDao sa = new setRequestAproveDao();
				sa.setReject(ab);
				HttpSession session = request.getSession();
				session.setAttribute("approvalflag", "false");
				response.sendRedirect("NGO & Waste/admindashboard/emergencyAmbulanceDetails.jsp");
				
			}
			else {
				System.out.println("Testing flag value:"+flag);
			}
		}
		else {
			System.out.println("details entering");
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			response.sendRedirect("NGO & Waste/admindashboard/emergencyAmbulanceDetails.jsp");
		}
	}

}
