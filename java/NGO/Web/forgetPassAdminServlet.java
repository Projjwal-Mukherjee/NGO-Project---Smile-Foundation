package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.forgetPassAdminBean;
import NGO.Database.emailValidateDao;
import NGO.Email.otpSendEmail;


public class forgetPassAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private emailValidateDao emailvalidatedao;
    public void init() {
    	emailvalidatedao = new emailValidateDao();
    }
    
    
    public forgetPassAdminServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		System.out.println(email);
		forgetPassAdminBean fpab = new forgetPassAdminBean();
		fpab.setEmail(email);
		HttpSession session = request.getSession();
		
		try {
			if(emailvalidatedao.validate(fpab)) {
				System.out.println("otp = "+fpab.getOTP());
				session.setAttribute("emailVal", fpab.getEmail());
				session.setAttribute("otp", fpab.getOTP());
				
				otpSendEmail ose = new otpSendEmail();
				ose.sendEmail(fpab);
				session.setAttribute("error", "false");
				response.sendRedirect("NGO & Waste/adminEnterOtp.jsp");
			}
			else {
				System.out.println("enterEmail");
				session.setAttribute("error", "true");
				response.sendRedirect("NGO & Waste/adminEnterEmail.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
