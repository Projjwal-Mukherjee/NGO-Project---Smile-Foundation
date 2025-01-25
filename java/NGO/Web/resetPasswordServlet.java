package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.resetPassBean;
import NGO.Database.resetPassDao;


public class resetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private resetPassDao resetpassdao;
   
    public resetPasswordServlet() {
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
			response.sendRedirect("NGO & Waste/enterNewPassword.jsp");
		}
		else if(appFlag.equals("reset")) {
			System.out.println("reset");
			resetPassBean rpb = new resetPassBean();
			rpb.setEmail(request.getParameter("email"));
			rpb.setPass(request.getParameter("newPassword"));
			resetpassdao = new resetPassDao();
			try {
				resetpassdao.updatePassword(rpb);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("NGO & Waste/JoinUs.jsp");
		}
		else {
			session.setAttribute("error2", "true");
			response.sendRedirect("NGO & Waste/enterOtp.jsp");
		}
		
		
	}

}
