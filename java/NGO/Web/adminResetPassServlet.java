package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.resetPassAdminBean;
import NGO.Database.resetPassDao;


public class adminResetPassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private resetPassDao resetpassdao;
   
    public adminResetPassServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String appFlag = request.getParameter("approval");
		System.out.println(appFlag);
		System.out.println("entering");
		HttpSession session = request.getSession();
		if(appFlag.equals("approved")) {
			session.setAttribute("emailVal", request.getParameter("email"));
			session.setAttribute("error", "false");
			response.sendRedirect("NGO & Waste/adminNewPassword.jsp");
		}
		else if(appFlag.equals("reset")) {
			System.out.println("reset");
			resetPassAdminBean rpab = new resetPassAdminBean();
			rpab.setEmail(request.getParameter("email"));
			rpab.setPass(request.getParameter("newPassword"));
			resetpassdao = new resetPassDao();
			try {
				resetpassdao.updatePassword(rpab);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("NGO & Waste/JoinUs.jsp");
		}
		else {
			session.setAttribute("error2", "true");
			response.sendRedirect("NGO & Waste/adminEnterOtp.jsp");
		}
		
		
	}

}
