package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.memNameEditBean;
import NGO.Database.memNameEditDao;


public class membernameEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private memNameEditDao mned;
    public void init() {
    	mned = new memNameEditDao();
    }
    public membernameEditServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("name"));
		memNameEditBean m = new memNameEditBean();
		m.setNewName(request.getParameter("uname"));
		m.setOldName(request.getParameter("oldname"));
		//memNameEditBean
		//memNameEditDao
		
		try {
			if(mned.validate(m)) {
				HttpSession session = request.getSession();
				session.setAttribute("memberName",m.getOldName());
				session.setAttribute("error", "Username already exist...");
				session.setAttribute("successful", null);
				response.sendRedirect("NGO & Waste/admindashboard/edit.jsp");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("memberName",m.getNewName());
				session.setAttribute("error", null);
				session.setAttribute("successful", "Updation successful...");
				response.sendRedirect("NGO & Waste/admindashboard/edit.jsp");
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
