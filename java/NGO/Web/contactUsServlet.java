package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.contactUsBean;
import NGO.Email.contactUsEmail;
public class contactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private contactUsEmail cuE;
    public void init() {
    	cuE = new contactUsEmail();
    }
    public contactUsServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		contactUsBean cuB = new contactUsBean();
		cuB.setFullname((String)request.getParameter("fname"), (String)request.getParameter("lname"));
		cuB.setEmail((String)request.getParameter("email"));
		cuB.setPhno((String)request.getParameter("phno"));
		cuB.setMessage((String)request.getParameter("message"));
		
		try {
			if(cuE.validate(cuB)) {
				HttpSession session = request.getSession();
				session.setAttribute("msg", "Your response is taken successfully");
				
				response.sendRedirect("NGO & Waste/contactUs.jsp");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("msg", "No internet! \nThere is an internet issue please try again later.");
				
				response.sendRedirect("NGO & Waste/contactUs.jsp");
			}
		}
		catch(Exception e) {
			System.out.println("Servlet error:"+e.getMessage());
		}
	}

}
