package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


public class ngoMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ngoMemberServlet() {
        super();
       
    }

	
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("username"));
		System.out.println(request.getParameter("username"));
		String membername = request.getParameter("username");
		HttpSession session = request.getSession();
		
		session.setAttribute("memberName",membername );
		response.sendRedirect("NGO & Waste/admindashboard/ngoMemberProfile.jsp");
	}

}
