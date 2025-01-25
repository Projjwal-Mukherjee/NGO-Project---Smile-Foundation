package NGO.Email;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
//bean file
import NGO.Bean.contactUsBean;
public class contactUsEmail {
	public boolean validate(contactUsBean cub) {
		boolean status = true;
		 
        // Recipient's email ID needs to be mentioned.
        String to = "smilefoundation832@gmail.com";

        // Sender's email ID needs to be mentioned projjwalmukherjee7872@gmail.com
        String from = cub.getEmail();

        // Assuming you are sending email from through gmails smtp
        String host = "smtp.gmail.com";

        // Get system properties
        Properties properties = System.getProperties();

        // Setup mail server "mail.smtp.host"
//        properties.put("mail.smtp.host", host);
//        properties.put("mail.smtp.port", "465");
//        properties.put("mail.smtp.ssl.enable", "true");
//        properties.put("mail.smtp.auth", "true");
        
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
//        properties.put("mail.smtp.starttls.required", "true");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

        // Get the Session object.// and pass username and password
        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication() {

                return new PasswordAuthentication("smilefoundation832@gmail.com", "eezakppeythrplyj");

            }

        });

        // Used to debug SMTP issues
        session.setDebug(true);

        try {
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));

            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

            // Set Subject: header field
            message.setSubject("User Contact Message");
            
            // Now set the actual message
            message.setText("From : "+cub.getEmail()+"\nName : "+cub.getFullname()+"\nPhone No. : "+cub.getPhno()+"\nMessage : "+cub.getMessage());

            System.out.println("sending...");
            // Send message
            Transport.send(message);
            System.out.println("Sent message successfully....");
        } catch (MessagingException mex) {
        	status = false;
            mex.printStackTrace();
        }
        
        return status;
    }
}
