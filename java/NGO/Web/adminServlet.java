package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.adminBean;
import NGO.Database.adminDao;
public class adminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private adminDao admindao;
	public void init() {
		admindao = new adminDao();
	}
    public adminServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		adminBean adminbean = new adminBean();
		adminbean.setName((String)request.getParameter("uname"));
		adminbean.setPassword((String)request.getParameter("password"));
		try {
			if(admindao.validate(adminbean)) {
				System.out.println("Name:"+adminbean.getName());
				System.out.println("Email:"+adminbean.getEmail());
				System.out.println("Phone No.:"+adminbean.getPhno());
				System.out.println("Password:"+adminbean.getPassword());
				HttpSession session = request.getSession();
				
				session.setAttribute("adminId", adminbean.getId());
				session.setAttribute("adminUsername", adminbean.getName());
				session.setAttribute("adminEmail", adminbean.getEmail());
				session.setAttribute("adminPhno", adminbean.getPhno());
				session.setAttribute("adminPassword", adminbean.getPassword());
				
				session.setAttribute("username", adminbean.getName());
				session.setAttribute("flag", "admin");
				response.sendRedirect("NGO & Waste/admindashboard/admin.jsp");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("error", "error3");
				response.sendRedirect("NGO & Waste/JoinUs.jsp");
				System.out.println("Invalid admin name and password");
			}
		}
		catch(Exception e) {
			System.out.println("Servlet error:"+e.getMessage());
		}
	}

}
