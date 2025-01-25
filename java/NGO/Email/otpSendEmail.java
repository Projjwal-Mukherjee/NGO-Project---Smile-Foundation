package NGO.Email;

import java.awt.Font;
import java.time.LocalDate;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import NGO.Bean.forgetPassAdminBean;
import NGO.Bean.forgetPassBean;

public class otpSendEmail {
public void sendEmail(forgetPassBean fpb) {
		
		
		//Message
		 String sendmessage = "Dear User,\n\nYour One-Time Password (OTP) for Reset-Password is:  "+fpb.getOTP()+" .\n\nPlease do not share this code with anyone. Our team will never ask you for your OTP. This code is valid for the next 5 minutes.\n\nIf you did not request this code, please ignore this message or contact our support team immediately.\n\nStay secure,\nSmile Foundation\nsmilefoundation832@gmail.com";
	     // Recipient's email ID needs to be mentioned.
	     String to = fpb.getEmail();
	     System.out.println("Email :-"+fpb.getEmail());
	     
	     
	     // Sender's email ID needs to be mentioned smilefoundation832@gmail.com
	     String from = "smilefoundation832@gmail.com";

	     // Assuming you are sending email from through gmails smtp
	     String host = "smtp.gmail.com";

	     // Get system properties
	     Properties properties = System.getProperties();

	     // Setup mail server "mail.smtp.host"
//	     properties.put("mail.smtp.host", host);
//	     properties.put("mail.smtp.port", "465");
//	     properties.put("mail.smtp.ssl.enable", "true");
//	     properties.put("mail.smtp.auth", "true");
	     
	     properties.put("mail.smtp.host", "smtp.gmail.com");
	     properties.put("mail.smtp.port", "465");
	     properties.put("mail.smtp.auth", "true");
	     properties.put("mail.smtp.starttls.enable", "true");
//	     properties.put("mail.smtp.starttls.required", "true");
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
	         message.setSubject("Your OTP Code");
	         
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
public void sendEmail(forgetPassAdminBean fpb) {
	
	
	//Message
	 String sendmessage = "Dear User,\n\nYour One-Time Password (OTP) for Reset-Password is:  "+fpb.getOTP()+" .\n\nPlease do not share this code with anyone. Our team will never ask you for your OTP. This code is valid for the next 5 minutes.\n\nIf you did not request this code, please ignore this message or contact our support team immediately.\n\nStay secure,\nSmile Foundation\nsmilefoundation832@gmail.com";
     // Recipient's email ID needs to be mentioned.
     String to = fpb.getEmail();
     System.out.println("Email :-"+fpb.getEmail());
     
     
     // Sender's email ID needs to be mentioned smilefoundation832@gmail.com
     String from = "smilefoundation832@gmail.com";

     // Assuming you are sending email from through gmails smtp
     String host = "smtp.gmail.com";

     // Get system properties
     Properties properties = System.getProperties();

     // Setup mail server "mail.smtp.host"
//     properties.put("mail.smtp.host", host);
//     properties.put("mail.smtp.port", "465");
//     properties.put("mail.smtp.ssl.enable", "true");
//     properties.put("mail.smtp.auth", "true");
     
     properties.put("mail.smtp.host", "smtp.gmail.com");
     properties.put("mail.smtp.port", "465");
     properties.put("mail.smtp.auth", "true");
     properties.put("mail.smtp.starttls.enable", "true");
//     properties.put("mail.smtp.starttls.required", "true");
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
         message.setSubject("Your OTP Code");
         
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
