package NGO.Email;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import NGO.Bean.ambulanceBean;
import NGO.Bean.disasterHelpBean;
import NGO.Bean.educationHelpBean;
import NGO.Bean.helpChildBean;
import NGO.Bean.medicalHelpBean;
import NGO.Bean.womenBean;

public class requestApprovedMessage {
	public void sendEmail(womenBean ab) {
		
	 //Message
	 String sendmessage = "Dear User,\n\nYour request to the Women Helpline has been approved. Our support team is actively working on your case and will reach out to you shortly. Please stay available for communication and let us know if there are any urgent updates.\n\nWe are here to support you. For immediate assistance, you can contact us at 7679847123.\n\nStay safe,\nSmile Foundation\nWomen Helpline Team\nsmilefoundation832@gmail.com";
     // Recipient's email ID needs to be mentioned.
     String to = ab.getEmail();
     System.out.println("Email :-"+ab.getEmail());
     
     
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
         message.setSubject("Women Helpline Request Approved");
         
         // Now set the actual message
         message.setText(sendmessage);

         System.out.println("sending...");
         // Send message
         Transport.send(message);
         System.out.println("Sent message successfully....");
     } catch (MessagingException mex) {
     	ab.setError(true);
         mex.printStackTrace();
     }
     
     
 }
	public void sendEmail(helpChildBean ab) {
		
		 //Message
		String sendmessage = "Dear User,\n\nYour request to the Child Helpline has been approved. Our dedicated support team is now handling the situation and will reach out to you shortly. Please remain reachable and inform us if there are any urgent updates.\n\nWe are here to assist and ensure the safety of the child. For immediate help, please contact us at 7679847123.\n\nKind regards,\nSmile Foundation\nChild Helpline Team\nsmilefoundation832@gmail.com";
    // Recipient's email ID needs to be mentioned.
    String to = ab.getEmail();
    System.out.println("Email :-"+ab.getEmail());
    
    
    // Sender's email ID needs to be mentioned smilefoundation832@gmail.com
    String from = "smilefoundation832@gmail.com";

    // Assuming you are sending email from through gmails smtp
    String host = "smtp.gmail.com";

    // Get system properties
    Properties properties = System.getProperties();

    // Setup mail server "mail.smtp.host"
//    properties.put("mail.smtp.host", host);
//    properties.put("mail.smtp.port", "465");
//    properties.put("mail.smtp.ssl.enable", "true");
//    properties.put("mail.smtp.auth", "true");
    
    properties.put("mail.smtp.host", "smtp.gmail.com");
    properties.put("mail.smtp.port", "465");
    properties.put("mail.smtp.auth", "true");
    properties.put("mail.smtp.starttls.enable", "true");
//    properties.put("mail.smtp.starttls.required", "true");
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
        message.setSubject("Child Helpline Request Approved");
        
        // Now set the actual message
        message.setText(sendmessage);

        System.out.println("sending...");
        // Send message
        Transport.send(message);
        System.out.println("Sent message successfully....");
    } catch (MessagingException mex) {
    	ab.setError(true);
        mex.printStackTrace();
    }
    
    
}
	public void sendEmail(ambulanceBean ab) {
		
		 //Message
		String sendmessage = "Dear User,\n\nYour emergency ambulance request has been approved. Our team is coordinating the dispatch, and the ambulance will reach your location shortly. If you have any further details or updates, please contact us at 7679847123.\n\nThank you for trusting us. We’re here to help.\n\nStay safe,\nSmile Foundation\nEmergency Ambulance Team\nsmilefoundation832@gmail.com";
    // Recipient's email ID needs to be mentioned.
    String to = ab.getEmail();
    System.out.println("Email :-"+ab.getEmail());
    
    
    // Sender's email ID needs to be mentioned smilefoundation832@gmail.com
    String from = "smilefoundation832@gmail.com";

    // Assuming you are sending email from through gmails smtp
    String host = "smtp.gmail.com";

    // Get system properties
    Properties properties = System.getProperties();

    // Setup mail server "mail.smtp.host"
//    properties.put("mail.smtp.host", host);
//    properties.put("mail.smtp.port", "465");
//    properties.put("mail.smtp.ssl.enable", "true");
//    properties.put("mail.smtp.auth", "true");
    
    properties.put("mail.smtp.host", "smtp.gmail.com");
    properties.put("mail.smtp.port", "465");
    properties.put("mail.smtp.auth", "true");
    properties.put("mail.smtp.starttls.enable", "true");
//    properties.put("mail.smtp.starttls.required", "true");
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
        message.setSubject("Emergency Ambulance Request Approved");
        
        // Now set the actual message
        message.setText(sendmessage);

        System.out.println("sending...");
        // Send message
        Transport.send(message);
        System.out.println("Sent message successfully....");
    } catch (MessagingException mex) {
    	ab.setError(true);
        mex.printStackTrace();
    }
    
    
}
	public void sendEmail(educationHelpBean ab) {
		
		 //Message
		String sendmessage = "Dear User,\n\nYour request to the Education Helpline has been approved. Our team is reviewing your case and will contact you shortly to provide guidance and support. Please ensure you remain reachable for further communication.\n\nIf you have any additional details or urgent queries, feel free to reach out to us at 7679847123.\n\nBest regards,\nSmile Foundation\nEducation Helpline Team\nsmilefoundation832@gmail.com";
   // Recipient's email ID needs to be mentioned.
   String to = ab.getEmail();
   System.out.println("Email :-"+ab.getEmail());
   
   
   // Sender's email ID needs to be mentioned smilefoundation832@gmail.com
   String from = "smilefoundation832@gmail.com";

   // Assuming you are sending email from through gmails smtp
   String host = "smtp.gmail.com";

   // Get system properties
   Properties properties = System.getProperties();

   // Setup mail server "mail.smtp.host"
//   properties.put("mail.smtp.host", host);
//   properties.put("mail.smtp.port", "465");
//   properties.put("mail.smtp.ssl.enable", "true");
//   properties.put("mail.smtp.auth", "true");
   
   properties.put("mail.smtp.host", "smtp.gmail.com");
   properties.put("mail.smtp.port", "465");
   properties.put("mail.smtp.auth", "true");
   properties.put("mail.smtp.starttls.enable", "true");
//   properties.put("mail.smtp.starttls.required", "true");
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
       message.setSubject("Education Helpline Request Approved");
       
       // Now set the actual message
       message.setText(sendmessage);

       System.out.println("sending...");
       // Send message
       Transport.send(message);
       System.out.println("Sent message successfully....");
   } catch (MessagingException mex) {
   	ab.setError(true);
       mex.printStackTrace();
   }
   
   
}
	//medical equipment helpline
	public void sendEmail(medicalHelpBean ab) {
		 //Message
		String sendmessage = "Dear User,\n\nYour request to the Medical Requirements Helpline has been approved. Our team is actively processing your case and will reach out to you shortly with the necessary assistance. Please ensure you are available for further communication.\n\nIf you have any urgent updates or queries, feel free to contact us at 7679847123.\n\nWishing you good health,\nSmile Foundation\nMedical Requirements Helpline Team\nsmilefoundation832@gmail.com";
  // Recipient's email ID needs to be mentioned.
  String to = ab.getEmail();
  System.out.println("Email :-"+ab.getEmail());
  
  
  // Sender's email ID needs to be mentioned smilefoundation832@gmail.com
  String from = "smilefoundation832@gmail.com";

  // Assuming you are sending email from through gmails smtp
  String host = "smtp.gmail.com";

  // Get system properties
  Properties properties = System.getProperties();

  // Setup mail server "mail.smtp.host"
//  properties.put("mail.smtp.host", host);
//  properties.put("mail.smtp.port", "465");
//  properties.put("mail.smtp.ssl.enable", "true");
//  properties.put("mail.smtp.auth", "true");
  
  properties.put("mail.smtp.host", "smtp.gmail.com");
  properties.put("mail.smtp.port", "465");
  properties.put("mail.smtp.auth", "true");
  properties.put("mail.smtp.starttls.enable", "true");
//  properties.put("mail.smtp.starttls.required", "true");
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
      message.setSubject("Medical Requirements Helpline Request Approved");
      
      // Now set the actual message
      message.setText(sendmessage);

      System.out.println("sending...");
      // Send message
      Transport.send(message);
      System.out.println("Sent message successfully....");
  } catch (MessagingException mex) {
  	ab.setError(true);
      mex.printStackTrace();
  }
  
  
}
	
	//Disaster helpline
		public void sendEmail(disasterHelpBean ab) {

			 //Message
			String sendmessage = "Dear User,\n\nYour request to the Disaster Helpline has been approved. Our response team is actively coordinating to provide the necessary assistance and will contact you shortly. Please stay reachable for any updates or further communication.\n\nIf there are urgent changes or additional information, please contact us at 7679847123.\n\nStay safe,\nSmile Foundation\nDisaster Helpline Team\nsmilefoundation832@gmail.com";
	  // Recipient's email ID needs to be mentioned.
	  String to = ab.getEmail();
	  System.out.println("Email :-"+ab.getEmail());
	  
	  
	  // Sender's email ID needs to be mentioned smilefoundation832@gmail.com
	  String from = "smilefoundation832@gmail.com";

	  // Assuming you are sending email from through gmails smtp
	  String host = "smtp.gmail.com";

	  // Get system properties
	  Properties properties = System.getProperties();

	  // Setup mail server "mail.smtp.host"
	//  properties.put("mail.smtp.host", host);
	//  properties.put("mail.smtp.port", "465");
	//  properties.put("mail.smtp.ssl.enable", "true");
	//  properties.put("mail.smtp.auth", "true");
	  
	  properties.put("mail.smtp.host", "smtp.gmail.com");
	  properties.put("mail.smtp.port", "465");
	  properties.put("mail.smtp.auth", "true");
	  properties.put("mail.smtp.starttls.enable", "true");
	//  properties.put("mail.smtp.starttls.required", "true");
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
	      message.setSubject("Disaster Helpline Request Approved");
	      
	      // Now set the actual message
	      message.setText(sendmessage);

	      System.out.println("sending...");
	      // Send message
	      Transport.send(message);
	      System.out.println("Sent message successfully....");
	  } catch (MessagingException mex) {
	  	ab.setError(true);
	      mex.printStackTrace();
	  }
	  
	  
	}
	
}
