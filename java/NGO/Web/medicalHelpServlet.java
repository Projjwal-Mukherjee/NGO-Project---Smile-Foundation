package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import NGO.Bean.medicalHelpBean;
import NGO.Database.medicalHelpDao;
import NGO.Email.requestReceiveEmail;

//medicalHelpServlet
public class medicalHelpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private medicalHelpDao medicalhelpdao;
	public void init() {
		medicalhelpdao = new medicalHelpDao();
    }

    public medicalHelpServlet() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		medicalHelpBean mhb = new medicalHelpBean();
		String equipRequire = request.getParameter("complaint1")+","+request.getParameter("complaint2")+","+request.getParameter("complaint3")+","+request.getParameter("complaint4");
		mhb.setOrgname(request.getParameter("oname"));
		mhb.setOrgtype(request.getParameter("org-type"));
		mhb.setAddress(request.getParameter("address"));
		mhb.setEquipment(equipRequire);
		mhb.setDescription(request.getParameter("description"));
		mhb.setName(request.getParameter("cname"));
		mhb.setEmail(request.getParameter("email"));
		mhb.setPhno(request.getParameter("phno"));
	
			try {
				if(medicalhelpdao.validate(mhb)) {
					HttpSession session = request.getSession();
					session.setAttribute("msg",mhb.getName()+"'s request is already taken if you want to put another request then give different emailid");
					response.sendRedirect("NGO & Waste/MedicalEquip.jsp");
				}
				else {
					HttpSession session = request.getSession();
					session.setAttribute("msg",null);
					requestReceiveEmail RRE = new requestReceiveEmail();
					RRE.sendEmail(mhb);
					response.sendRedirect("NGO & Waste/services.jsp");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			
		}
}
