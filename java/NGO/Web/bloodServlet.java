package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.bloodBean;
import NGO.Database.bloodDao;
import NGO.Email.donateRequestReceivedEmail;


public class bloodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private bloodDao blooddao;
    public void init() {
    	blooddao = new bloodDao();
    }
    public bloodServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		bloodBean bb = new bloodBean();
		bb.setFullname(request.getParameter("fname"));
		bb.setEmail(request.getParameter("email"));
		bb.setPhno(request.getParameter("phno"));
		bb.setBloodgroup(request.getParameter("bloodgroup"));
		bb.setAddress(request.getParameter("address"));
		donateRequestReceivedEmail dre = new donateRequestReceivedEmail();
		dre.sendEmail(bb);
		if(bb.getError()) {
			HttpSession session = request.getSession();
			session.setAttribute("msg", "No internet! There is an internet issue please try again later.");
			response.sendRedirect("NGO & Waste/Donation/DonateBlood.jsp");
		}
		else {
			try {
				blooddao.insertBloodDonation(bb);
			}
			catch(Exception e) {
				System.out.println("Servlet error:"+e.getMessage());
			}
			HttpSession session = request.getSession();
			session.setAttribute("name", bb.getFullname());
			session.setAttribute("msg", "Your response is taken successfully");
			response.sendRedirect("NGO & Waste/Donation/DonateBlood.jsp");
		}
		
		
		
		
	}

}
