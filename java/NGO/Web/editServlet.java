package NGO.Web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import NGO.Bean.editBean;
import NGO.Database.editDao;
@MultipartConfig
@WebServlet("/editServlet")
public class editServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private editDao editdao;
    public void init() {
    	editdao = new editDao();
    }
    
    public editServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Upload Image");
		Part file = request.getPart("inputimage");
		String imageFileName = file.getSubmittedFileName();
		System.out.println("Selected Image File Name : "+imageFileName);
		
		// Setting the editbean values
		editBean editbean = new editBean();
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String oldusername = request.getParameter("oldusername");
		String oldemail = request.getParameter("oldemail");
		String oldurl = request.getParameter("oldurl");
		
		editbean.setOldEmail(oldemail);
		editbean.setOldUsername(oldusername);
		editbean.setUsername(username);
		editbean.setEmail(email);
		editbean.setUrl(imageFileName);
		editbean.setOldUrl(oldurl);
		
		System.out.println("Servlet:-");
		System.out.println("username: "+editbean.getUsername());
		System.out.println("old username: "+editbean.getOldUsername());
		System.out.println("email: "+editbean.getEmail());
		System.out.println("old email: "+editbean.getOldEmail());
		System.out.println("url: "+editbean.getUrl());
		System.out.println("oldurl: "+editbean.getOldUrl());
		
		//C:/Users/projjwal/OneDrive/Desktop/Minor Project/LoginProject/
		///LoginProject/src/main/webapp/uploads   /NGO_Project/src/main/webapp/NGO & Waste
		if(imageFileName!="") {
			String uploadPath = "C:/Users/projjwal/OneDrive/Desktop/Minor Project/NGO_Project/src/main/webapp/NGO & Waste/uploads/"+imageFileName;
			try {
				FileOutputStream fos = new FileOutputStream(uploadPath);
				InputStream is = file.getInputStream();
				
				byte[] data = new byte[is.available()];
				is.read(data);
				fos.write(data);
				fos.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		try {
			if(editdao.validate(editbean)) {
				HttpSession session = request.getSession();
				session.setAttribute("username",editbean.getUsername());
				session.setAttribute("msg", "Invalid username or email");
				response.sendRedirect("NGO & Waste/edit.jsp");
			}
			else {
				HttpSession session  = request.getSession();
				session.setAttribute("username",editbean.getUsername());
				
				session.setAttribute("flag", "success");
				response.sendRedirect("NGO & Waste/home.jsp");
			}
		}
		catch(Exception e) {
			System.out.println("Servlet error:"+e.getMessage());
		}
	}

}
