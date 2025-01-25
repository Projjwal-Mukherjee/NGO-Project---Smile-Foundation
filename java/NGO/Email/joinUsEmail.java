package NGO.Email;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import NGO.Bean.signupBean;
public class joinUsEmail {
	public void sendEmail(signupBean sub) {
		
		 //Message
		String sendmessage = "Dear "+sub.getUsername()+",\n\nWelcome to our Smile Foundation family! 🎉\n\nWe're thrilled to have you join our NGO family. Your decision to dedicate time and effort to our cause means the world to us. Together, we will make a positive impact and bring about the change we wish to see.\n\nFeel free to reach out if you have any questions or need assistance. We’re here to support you every step of the way. Let’s make a difference together!\n\nAs you settle in, don't hesitate to share any ideas you have. We believe that every voice matters and can't wait to hear your fresh perspectives.\n\nOnce again, welcome! Let's create a brighter future, together.\n\nWarm regards,\n\nSmile Foundation\nsmilefoundation832@gmail.com ";
        // Recipient's email ID needs to be mentioned.
        String to = sub.getEmailid();

        // Sender's email ID needs to be mentioned smilefoundation832@gmail.com
        String from = "smilefoundation832@gmail.com";

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
            message.setSubject("Welcome Message");
            
            // Now set the actual message
            message.setText(sendmessage);

            System.out.println("sending...");
            // Send message
            Transport.send(message);
            System.out.println("Sent message successfully....");
        } catch (MessagingException mex) {
        	
            mex.printStackTrace();
        }
        
        
    }
}
