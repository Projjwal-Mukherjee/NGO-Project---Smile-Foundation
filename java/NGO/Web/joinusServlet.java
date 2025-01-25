package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import NGO.Bean.loginBean;
import NGO.Bean.signupBean;
import NGO.Database.loginDao;
import NGO.Database.signupDao;
import NGO.Email.joinUsEmail;
@WebServlet("/joinusServlet")
public class joinusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private loginDao logindao;  // object define 
    private signupDao signupdao;
    
    public void init() {
    	logindao = new loginDao(); // Object create
    	signupdao = new signupDao();
    }
    
    public joinusServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("servletflag");
		System.out.println(flag);
		if(flag.equals("login")) { 
			System.out.println("Entering");
			String username = request.getParameter("uname");
			String password = request.getParameter("password");
			
			loginBean loginbean = new loginBean();  
			loginbean.setUsername(username);
			loginbean.setPassword(password);
			try {
				if(logindao.validate(loginbean)) {
					HttpSession session  = request.getSession();
					session.setAttribute("username",username);
					session.setAttribute("password",password);
					session.setAttribute("flag", "success");
					response.sendRedirect("NGO & Waste/home.jsp");
				}
				else {
					HttpSession session2  = request.getSession();
					session2.setAttribute("flag","login");
					response.sendRedirect("NGO & Waste/JoinUs.jsp");
				}
			}
			catch(ClassNotFoundException e) {
				System.out.println("Servlet Error:"+e.getMessage());
			}
			
		}
		if(flag.equals("signup")) {
			System.out.println("signup");
			String username = request.getParameter("uname");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			signupBean signupbean = new signupBean();
			signupbean.setUsername(username);
			signupbean.setEmailid(email);
			signupbean.setPassword(password);
			try {
				if(signupdao.validate(signupbean)) {
					HttpSession session = request.getSession();
					session.setAttribute("flag", "signup");
					response.sendRedirect("NGO & Waste/JoinUs.jsp");
					//localhost:8083/NGO_Project/NGO%20&%20Waste/JoinUs.jsp
				}
				else if(signupdao.getError()!=false) {
					HttpSession session = request.getSession();
					session.setAttribute("flag", "signup");
					response.sendRedirect("NGO & Waste/JoinUs.jsp");
					signupdao.setError(false);
				}
				else {
					joinUsEmail jue = new joinUsEmail();
					jue.sendEmail(signupbean);
					//message passing of successfully registered
					HttpSession session = request.getSession();
					session.setAttribute("flag", "login");
					session.setAttribute("success", "True");
					response.sendRedirect("NGO & Waste/JoinUs.jsp");
				}
			}
			catch(ClassNotFoundException e) {
				System.out.println("Servlet error:"+e.getMessage());
			}
		}
	}

}
