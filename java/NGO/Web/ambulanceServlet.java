package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import NGO.Bean.ambulanceBean;
import NGO.Database.ambulanceDao;
import NGO.Email.requestReceiveEmail;
import NGO.Bean.loginBean;
//@WebServlet("ambulanceEmergencyServlet")

public class ambulanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 private ambulanceDao ambulancedao;
	    public void init() {
	    	ambulancedao = new ambulanceDao();
	    }

   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ambulanceBean ambulancebean = new ambulanceBean();
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phno = request.getParameter("phno");
		String relation = request.getParameter("relation");
		String address = request.getParameter("Address");
		String street_adress = request.getParameter("strAdd");
		String city = request.getParameter("City");
		String state = request.getParameter("state");
		String postal = request.getParameter("zipcode");
		
		ambulancebean.setFname(fname);
		ambulancebean.setLname(lname);
		ambulancebean.setEmail(email);
		ambulancebean.setPhno(phno);
		ambulancebean.setRelation(relation);
		ambulancebean.setAddress(address);
		ambulancebean.setStreet_adress(street_adress);
		ambulancebean.setCity(city);
		ambulancebean.setState(state);
		ambulancebean.setPostal(postal);
		try {
			if(ambulancedao.validate(ambulancebean)) {
				HttpSession session = request.getSession();
				session.setAttribute("msg",fname+"'s request is already taken if you want to put another request then give different emailid");
				response.sendRedirect("NGO & Waste/EmergencyAmbulance.jsp");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("msg",null);
				requestReceiveEmail RRE = new requestReceiveEmail();
				RRE.sendEmail(ambulancebean);
				response.sendRedirect("NGO & Waste/services.jsp");
			}
		}
		catch(Exception e) {
			System.out.println("Servlet Exception:"+e);
		}

	}

}
