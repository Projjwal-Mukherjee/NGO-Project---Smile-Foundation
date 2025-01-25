package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.foodClothBean;
import NGO.Database.foodClothDao;
import NGO.Email.donateRequestReceivedEmail;

//foodClothServlet
public class foodClothServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private foodClothDao foodclothdao;
	public void init() {
		foodclothdao = new foodClothDao();
	}
    
    public foodClothServlet() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		foodClothBean fcb = new foodClothBean();
		fcb.setFullname(request.getParameter("fname")); 
		fcb.setEmail(request.getParameter("email"));
		fcb.setPhno(request.getParameter("phno"));
		fcb.setAddress(request.getParameter("address"));
		donateRequestReceivedEmail dre = new donateRequestReceivedEmail();
		dre.sendEmail(fcb);
		if(fcb.getError()) {
			HttpSession session = request.getSession();
			session.setAttribute("msg", "No internet! There is an internet issue please try again later.");
			response.sendRedirect("NGO & Waste/Donation/DonateFoodCloth.jsp");
		}
		else {
			try {
				foodclothdao.insertFoodClothDonation(fcb);
			} catch (Exception e) {
				e.printStackTrace();
			}
			HttpSession session = request.getSession();
			session.setAttribute("name", fcb.getFullname());
			session.setAttribute("msg", "Your response is taken successfully");
			response.sendRedirect("NGO & Waste/Donation/DonateFoodCloth.jsp");
		}
		
		
	}

}
