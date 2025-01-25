package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.memEmailEditBean;
import NGO.Database.memEmailEditDao;


public class memEmailEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private memEmailEditDao MEE;
	public void init() {
		MEE = new memEmailEditDao();
	}
    
    public memEmailEditServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("email"));
		memEmailEditBean m = new memEmailEditBean();
		m.setNewEmail(request.getParameter("email"));
		m.setOldEmail(request.getParameter("oldemail"));
		
		try {
			if(MEE.validate(m)) {
				HttpSession session = request.getSession();
				session.setAttribute("error2", "Email already registered...");
				session.setAttribute("successful2", null);
				response.sendRedirect("NGO & Waste/admindashboard/edit.jsp");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("error2", null);
				session.setAttribute("successful2", "Updation successful...");
				response.sendRedirect("NGO & Waste/admindashboard/edit.jsp");
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
