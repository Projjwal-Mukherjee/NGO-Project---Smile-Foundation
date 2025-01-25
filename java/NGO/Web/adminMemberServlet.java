package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


public class adminMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public adminMemberServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("username"));
		String adminname = request.getParameter("username");
		System.out.println("adminname:"+adminname);
		HttpSession session = request.getSession();
		
		session.setAttribute("adminName",adminname);
		response.sendRedirect("NGO & Waste/admindashboard/adminMemberProfile.jsp");
	}

}
