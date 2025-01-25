package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


public class donationShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public donationShowServlet() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		String id = request.getParameter("id");
		System.out.println("entering");
		HttpSession session = request.getSession(); 
		if(flag.equals("blood") ) {
			System.out.println("blood");
			session.setAttribute("userid",id);
			response.sendRedirect("NGO & Waste/Donation/bloodDonationShow.jsp");
		}
		else if(flag.equals("food")) {
			session.setAttribute("userid",id);
			response.sendRedirect("NGO & Waste/Donation/foodDonationShow.jsp");
		}
		else if(flag.equals("medical")) {
			session.setAttribute("userid",id);
			response.sendRedirect("NGO & Waste/Donation/medicalDonationShow.jsp");
		}
		else if(flag.equals("amount")) {
			session.setAttribute("userid",id);
			response.sendRedirect("NGO & Waste/Donation/amountDonationShow.jsp");
		}
	}

}
