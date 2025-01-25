package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.amountDonateBean;
import NGO.Database.amountDonationDao;
import NGO.Email.donateRequestReceivedEmail;


public class amountDonateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private amountDonationDao amountDao;
    public void init() {
    	amountDao = new amountDonationDao();
    }
    public amountDonateServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		amountDonateBean amb = new amountDonateBean();
		amb.setName(request.getParameter("fname"));
		amb.setEmail(request.getParameter("email"));
		amb.setPhno(request.getParameter("phno"));
		amb.setTransactionID(request.getParameter("tid"));
		
		try {
			amountDao.insertAmountDonation(amb);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		donateRequestReceivedEmail dre = new donateRequestReceivedEmail();
		dre.sendEmail(amb);
		HttpSession session = request.getSession();
		session.setAttribute("name", amb.getName());
		session.setAttribute("msg", "Your response is taken successfully");
		response.sendRedirect("NGO & Waste/Donation/qrCode.jsp");
	}

}
