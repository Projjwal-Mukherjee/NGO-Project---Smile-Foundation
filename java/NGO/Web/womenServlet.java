package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import NGO.Bean.womenBean;
import NGO.Database.womenDao;
import NGO.Email.requestReceiveEmail;

public class womenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private womenDao womendao;
    public void init() {
    	womendao = new womenDao();
    }

    public womenServlet() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		womenBean womenbean = new womenBean();
		String complain = (String)request.getParameter("complaint1")+","+(String)request.getParameter("complaint2")+","+(String)request.getParameter("complaint3")+","+(String)request.getParameter("complaint4")+","+(String)request.getParameter("complaint5");
		womenbean.setName((String)request.getParameter("wname"));
		womenbean.setAge((String)request.getParameter("age"));
		womenbean.setAddress((String)request.getParameter("address"));
		womenbean.setRelation((String)request.getParameter("reln"));
		womenbean.setComplain(complain);
		womenbean.setIssue((String)request.getParameter("issue"));
		womenbean.setComplainer((String)request.getParameter("cname"));
		womenbean.setEmail((String)request.getParameter("email"));
		womenbean.setPhno((String)request.getParameter("phno"));
		try {
			if(womendao.validate(womenbean)) {
				HttpSession session = request.getSession();
				session.setAttribute("msg",womenbean.getName()+"'s request is already taken if you want to put another request then give different emailid");
				response.sendRedirect("NGO & Waste/womenHelpline.jsp");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("msg",null);
				requestReceiveEmail RRE = new requestReceiveEmail();
				RRE.sendEmail(womenbean);
				response.sendRedirect("NGO & Waste/services.jsp");
			}
		}
		catch(Exception e) {
			System.out.println("Servlet Exception:"+e);
		}
	}

}
