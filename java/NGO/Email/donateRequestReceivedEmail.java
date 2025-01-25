package NGO.Email;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import NGO.Bean.amountDonateBean;
import NGO.Bean.bloodBean;
import NGO.Bean.foodClothBean;
import NGO.Bean.medicalSuppliesBean;
public class donateRequestReceivedEmail {
	public void sendEmail(foodClothBean fcb) {
		
		
		//receive date
		LocalDate date = LocalDate.now();
		date = date.plusDays(5);
		//Message
		 String sendmessage = "Dear "+fcb.getFullname()+",\n\nThank you so much for your thoughtful decision to donate food and clothing to support our cause at Smile Foundation. Your generosity will bring much-needed relief and joy to those we serve.\n\nOur team is more than happy to make the process convenient for you. We will come to your location to receive your contribution. We will contact you soon. If there are any changes or additional details we should be aware of, please feel free to let us know at 7679847123.\n\nYour support means the world to us and to the individuals and families who will benefit from your kindness. Together, we can make a meaningful impact.\n\nOnce again, thank you for your generosity!\n\nWarm regards,\nSmile Foundation\nsmilefoundation832@gmail.com";
	     // Recipient's email ID needs to be mentioned.
	     String to = fcb.getEmail();
	     System.out.println("Email :-"+fcb.getEmail());
	     
	     
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
	         message.setSubject("Thank You for Your Generous Contribution!");
	         
	         // Now set the actual message
	         message.setText(sendmessage);

	         System.out.println("sending...");
	         // Send message
	         Transport.send(message);
	         System.out.println("Sent message successfully....");
	     } catch (MessagingException mex) {
	     	fcb.setError(true);
	         mex.printStackTrace();
	     }
	}
public void sendEmail(bloodBean bb) {
		
	
	
	
		//receive date
		LocalDate date = LocalDate.now();
		date = date.plusDays(5);
		//Message
		 String sendmessage = "Dear "+bb.getFullname()+",\n\nWe are deeply grateful for your generous decision to donate blood through Smile Foundation.\n\nYour generosity is truly life-saving and will bring hope and healing to those in critical need.\n\nTo make the process convenient for you, our team will visit your location to collect your donation on "+date+". If there are any changes or specific details we should be aware of, please don’t hesitate to contact us at 7679847123.\n\nYour selflessness inspires us, and your contribution will have a profound impact on the lives of those who rely on the gift of life.\n\nThank you once again for your invaluable support! Together, we can make a difference.\n\nWith heartfelt appreciation,\nSmile Foundation\nsmilefoundation832@gmail.com";
	     // Recipient's email ID needs to be mentioned.
	     String to = bb.getEmail();
	     System.out.println("Email :-"+bb.getEmail());
	     
	     
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
	         message.setSubject("Thank You for Your Life-Saving Contribution!");
	         
	         // Now set the actual message
	         message.setText(sendmessage);

	         System.out.println("sending...");
	         // Send message
	         Transport.send(message);
	         System.out.println("Sent message successfully....");
	     } catch (MessagingException mex) {
	    	 bb.setError(true);
	         mex.printStackTrace();
	     }
	}
public void sendEmail(medicalSuppliesBean msb) {
	
	      


	
	//receive date
	LocalDate date = LocalDate.now();
	date = date.plusDays(5);
	//Message
	 String sendmessage = "Dear "+msb.getFullname()+",\n\nWe are deeply thankful for your decision to donate medical supplies to Smile Foundation. Your generous contribution will play a vital role in improving the health and well-being of those in need, providing them with essential care and support.\n\nTo make things convenient for you, our team will come to your location to collect the supplies on "+date+". If there are any specific details we should know or adjustments to the schedule, please feel free to contact us at 7679847123.\n\nYour kindness and compassion inspire us, and your donation will bring a positive and lasting impact to many lives. Thank you for being a valued part of our mission to create a healthier and more equitable community.\n\nWith sincere gratitude,\nSmile Foundation\nsmilefoundation832@gmail.com";
     // Recipient's email ID needs to be mentioned.
     String to = msb.getEmail();
     System.out.println("Email :-"+msb.getEmail());
     
     
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
         message.setSubject(" Thank You for Supporting Health and Hope!");
         
         // Now set the actual message
         message.setText(sendmessage);

         System.out.println("sending...");
         // Send message
         Transport.send(message);
         System.out.println("Sent message successfully....");
     } catch (MessagingException mex) {
    	 msb.setError(true);
         mex.printStackTrace();
     }
}
   public void sendEmail(amountDonateBean msb) {
	
	
	//Message
	 String sendmessage = "Dear "+msb.getName()+",\n\nWe are truly grateful for your generous donation to Smile Foundation . Your contribution will go a long way in helping us achieve our mission and make a meaningful difference in the lives of those we serve.\n\nYour support enables us to continue providing vital resources and assistance to those in need, and it inspires us to work even harder to create a positive impact in our community.\n\nThank you for believing in our cause and for being a part of this journey with us.\n\nWith warm regards and heartfelt appreciation,\nSmile Foundation\nsmilefoundation832@gmail.com";
     // Recipient's email ID needs to be mentioned.
     String to = msb.getEmail();
     System.out.println("Email :-"+msb.getEmail());
     
     
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
         message.setSubject(" Thanks for Your Generous Support!");
         
         // Now set the actual message
         message.setText(sendmessage);

         System.out.println("sending...");
         // Send message
         Transport.send(message);
         System.out.println("Sent message successfully....");
     } catch (MessagingException mex) {
    	 System.out.println("No internet! There is an internet issue .");
         mex.printStackTrace();
     }
 }
}
