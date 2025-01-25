package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.forgetPassBean;
import NGO.Database.emailValidateDao;
import NGO.Email.otpSendEmail;


public class forgetPassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private emailValidateDao emailvalidatedao;
    public void init() {
    	emailvalidatedao = new emailValidateDao();
    }
    
    public forgetPassServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		System.out.println(email);
		forgetPassBean fpb = new forgetPassBean();
		fpb.setEmail(email);
		HttpSession session = request.getSession();
		
		try {
			if(emailvalidatedao.validate(fpb)) {
				System.out.println("otp = "+fpb.getOTP());
				session.setAttribute("emailVal", fpb.getEmail());
				session.setAttribute("otp", fpb.getOTP());
				
				otpSendEmail ose = new otpSendEmail();
				ose.sendEmail(fpb);
				session.setAttribute("error", "false");
				response.sendRedirect("NGO & Waste/enterOtp.jsp");
			}
			else {
				System.out.println("enterEmail");
				session.setAttribute("error", "true");
				response.sendRedirect("NGO & Waste/enterEmail.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
