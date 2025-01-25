package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.memPasswordEditBean;
import NGO.Database.memPasswordEditDao;


public class memPasswordEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
//	memPasswordEditBean
	private memPasswordEditDao MPE;
	public void init() {
		MPE = new memPasswordEditDao();
	}
    public memPasswordEditServlet() {
        super();
        }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		memPasswordEditBean m = new memPasswordEditBean();
		m.setNewPassword(request.getParameter("pass"));
		m.setOldPassword(request.getParameter("oldpass"));
		
		try {
			if(MPE.validate(m)) {
				HttpSession session = request.getSession();
				session.setAttribute("error3", "Invalid Password...");
				session.setAttribute("successful3",null );
				response.sendRedirect("NGO & Waste/admindashboard/edit.jsp");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("error3", null);
				session.setAttribute("successful3", "Updation successful...");
				response.sendRedirect("NGO & Waste/admindashboard/edit.jsp");
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
