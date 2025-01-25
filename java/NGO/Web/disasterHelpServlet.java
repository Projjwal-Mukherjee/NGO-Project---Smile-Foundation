package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.disasterHelpBean;
import NGO.Database.disasterHelpDao;
import NGO.Email.requestReceiveEmail;

//disasterHelpServlet
public class disasterHelpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private disasterHelpDao disasterhelpdao;
    public void init() {
    	disasterhelpdao = new disasterHelpDao();
    }
    public disasterHelpServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		disasterHelpBean dhb = new disasterHelpBean();
		dhb.setLocation(request.getParameter("loc"));
		dhb.setDate(request.getParameter("date"));
		dhb.setAddress(request.getParameter("address"));
		dhb.setDescription(request.getParameter("desc"));
		dhb.setName(request.getParameter("cname"));
		dhb.setEmail(request.getParameter("email"));
		dhb.setPhno(request.getParameter("phno"));
		try {
			if(disasterhelpdao.validate(dhb)) {
				HttpSession session = request.getSession();
				session.setAttribute("msg",dhb.getName()+"'s request is already taken if you want to put another request then give different emailid");
				response.sendRedirect("NGO & Waste/Disaster.jsp");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("msg",null);
				requestReceiveEmail RRE = new requestReceiveEmail();
				RRE.sendEmail(dhb);
				response.sendRedirect("NGO & Waste/services.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
