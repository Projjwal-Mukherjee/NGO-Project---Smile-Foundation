package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.medicalSuppliesBean;
import NGO.Database.medicalSuppliesDao;
import NGO.Email.donateRequestReceivedEmail;


public class medicalSuppliesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private medicalSuppliesDao medicalsuppliesdao;
	public void init() {
		medicalsuppliesdao = new medicalSuppliesDao();
	}
    
    public medicalSuppliesServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		medicalSuppliesBean msb = new medicalSuppliesBean();
		msb.setFullname(request.getParameter("fname"));
		msb.setEmail(request.getParameter("email"));
		msb.setPhno(request.getParameter("phno"));
		msb.setAddress(request.getParameter("address"));
		msb.setMedEquipment(request.getParameter("equipmentdescription"));
		donateRequestReceivedEmail dre = new donateRequestReceivedEmail();
		dre.sendEmail(msb);
		if(msb.getError()) {
			HttpSession session = request.getSession();
			session.setAttribute("msg", "No internet! There is an internet issue please try again later.");
			response.sendRedirect("NGO & Waste/Donation/DonateMedicines.jsp");
		}
		else {
			try {
				medicalsuppliesdao.insertMedicalSupply(msb);
			}
			catch(Exception e) {
				System.out.println("Servlet error:"+e.getMessage());
			}
			HttpSession session = request.getSession();
			session.setAttribute("name", msb.getFullname());
			session.setAttribute("msg", "Your response is taken successfully");
			response.sendRedirect("NGO & Waste/Donation/DonateMedicines.jsp");
		}
		
	}

}
