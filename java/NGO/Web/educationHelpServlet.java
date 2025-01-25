package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.educationHelpBean;
import NGO.Database.educationHelpDao;
import NGO.Email.requestReceiveEmail;


public class educationHelpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private educationHelpDao educationhelpdao;
    public void init() {
    	educationhelpdao = new educationHelpDao();
    }
    
    public educationHelpServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		educationHelpBean ehb = new educationHelpBean();
		ehb.setName(request.getParameter("name"));
		ehb.setAge(request.getParameter("age"));
		ehb.setAddress(request.getParameter("address"));
		ehb.setGender(request.getParameter("gen"));
		ehb.setRelationship(request.getParameter("reln"));
		ehb.setDescription(request.getParameter("description"));
		ehb.setReportername(request.getParameter("cname"));
		ehb.setEmail(request.getParameter("email"));
		ehb.setPhno(request.getParameter("phno"));
		
		try {
			if(educationhelpdao.validate(ehb)) {
				HttpSession session = request.getSession();
				session.setAttribute("msg",ehb.getName()+"'s request is already taken if you want to put another request then give different emailid");
				response.sendRedirect("NGO & Waste/Education.jsp");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("msg",null);
				requestReceiveEmail RRE = new requestReceiveEmail();
				RRE.sendEmail(ehb);
				response.sendRedirect("NGO & Waste/services.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
