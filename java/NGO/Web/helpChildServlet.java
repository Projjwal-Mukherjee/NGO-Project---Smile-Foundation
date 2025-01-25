package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.helpChildBean;
import NGO.Database.helpChildDao;
import NGO.Email.requestReceiveEmail;
public class helpChildServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private helpChildDao childdao;
    public void init() {
    	childdao = new helpChildDao();
    }
    public helpChildServlet() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		helpChildBean childbean = new helpChildBean();
		childbean.setFname((String)request.getParameter("fname"));
		childbean.setLname((String)request.getParameter("lname"));
		childbean.setAge((String)request.getParameter("age"));
		childbean.setGender((String)request.getParameter("Gender"));
		childbean.setAdress((String)request.getParameter("Address"));
		childbean.setPhno((String)request.getParameter("phno"));
		childbean.setIssue((String)request.getParameter("brief1"));
		childbean.setReporter((String)request.getParameter("callerName"));
		childbean.setRelation((String)request.getParameter("relation2child"));
		childbean.setEmail((String)request.getParameter("email"));
		childbean.setPhon_reporter((String)request.getParameter("phnom"));
		
		try {
			if(childdao.validate(childbean)) {
				HttpSession session = request.getSession();
				session.setAttribute("msg",childbean.getFname()+"'s request is already taken if you want to put another request then give different emailid");
				response.sendRedirect("NGO & Waste/childHelplineForm.jsp");
			}
			else {
				HttpSession session = request.getSession();
				requestReceiveEmail RRE = new requestReceiveEmail();
				RRE.sendEmail(childbean);
				session.setAttribute("msg",null);
				response.sendRedirect("NGO & Waste/services.jsp");
			}
		}
		catch(Exception e) {
			System.out.println("Servlet Exception:"+e.getMessage());
		}
		
	}

}
