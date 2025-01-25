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

public class requestReceiveEmail {
	public void sendEmail(ambulanceBean ab) {
		
		 //Message
		String sendmessage = "Dear "+ab.getFname()+" "+ab.getLname()+",\n\nYour request has been successfully received. Please wait while our Request Management Team reviews and approves it. We will notify you shortly with further updates. \n \nThank you for your patience and understanding.\n\nSmile Foundation\nEmergency Response Team\nsmilefoundation832@gmail.com ";
       // Recipient's email ID needs to be mentioned.
       String to = ab.getEmail();
       
       
       
       // Sender's email ID needs to be mentioned smilefoundation832@gmail.com
       String from = "smilefoundation832@gmail.com";

       // Assuming you are sending email from through gmails smtp
       String host = "smtp.gmail.com";

       // Get system properties
       Properties properties = System.getProperties();

       // Setup mail server "mail.smtp.host"
//       properties.put("mail.smtp.host", host);
//       properties.put("mail.smtp.port", "465");
//       properties.put("mail.smtp.ssl.enable", "true");
//       properties.put("mail.smtp.auth", "true");
       
       properties.put("mail.smtp.host", "smtp.gmail.com");
       properties.put("mail.smtp.port", "465");
       properties.put("mail.smtp.auth", "true");
       properties.put("mail.smtp.starttls.enable", "true");
//       properties.put("mail.smtp.starttls.required", "true");
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
           message.setSubject("Request Confirmation");
           
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
	public void sendEmail(helpChildBean ab) {
		
		 //Message
		String sendmessage = "Dear "+ab.getReporter()+",\n\nYour request has been successfully received. Please wait while our Request Management Team reviews and approves it. We will notify you shortly with further updates.\n\nThank you for your patience and understanding.\n\nSmile Foundation\nEmergency Response Team\nsmilefoundation832@gmail.com ";
      // Recipient's email ID needs to be mentioned.
      String to = ab.getEmail();
      
      
      
      // Sender's email ID needs to be mentioned smilefoundation832@gmail.com
      String from = "smilefoundation832@gmail.com";

      // Assuming you are sending email from through gmails smtp
      String host = "smtp.gmail.com";

      // Get system properties
      Properties properties = System.getProperties();

      // Setup mail server "mail.smtp.host"
//      properties.put("mail.smtp.host", host);
//      properties.put("mail.smtp.port", "465");
//      properties.put("mail.smtp.ssl.enable", "true");
//      properties.put("mail.smtp.auth", "true");
      
      properties.put("mail.smtp.host", "smtp.gmail.com");
      properties.put("mail.smtp.port", "465");
      properties.put("mail.smtp.auth", "true");
      properties.put("mail.smtp.starttls.enable", "true");
//      properties.put("mail.smtp.starttls.required", "true");
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
          message.setSubject("Request Confirmation");
          
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
	public void sendEmail(medicalHelpBean ab) {
		
		 //Message
		String sendmessage = "Dear "+ab.getName()+",\n\nYour request has been successfully received. Please wait while our Request Management Team reviews and approves it. We will notify you shortly with further updates.\n\nThank you for your patience and understanding.\n\nSmile Foundation\nEmergency Response Team\nsmilefoundation832@gmail.com ";
      // Recipient's email ID needs to be mentioned.
      String to = ab.getEmail();
      
      
      
      // Sender's email ID needs to be mentioned smilefoundation832@gmail.com
      String from = "smilefoundation832@gmail.com";

      // Assuming you are sending email from through gmails smtp
      String host = "smtp.gmail.com";

      // Get system properties
      Properties properties = System.getProperties();

      // Setup mail server "mail.smtp.host"
//      properties.put("mail.smtp.host", host);
//      properties.put("mail.smtp.port", "465");
//      properties.put("mail.smtp.ssl.enable", "true");
//      properties.put("mail.smtp.auth", "true");
      
      properties.put("mail.smtp.host", "smtp.gmail.com");
      properties.put("mail.smtp.port", "465");
      properties.put("mail.smtp.auth", "true");
      properties.put("mail.smtp.starttls.enable", "true");
//      properties.put("mail.smtp.starttls.required", "true");
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
          message.setSubject("Request Confirmation");
          
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
	
	public void sendEmail(womenBean ab) {
		
		 //Message
		String sendmessage = "Dear "+ab.getComplainer()+",\n\nYour request has been successfully received. Please wait while our Request Management Team reviews and approves it. We will notify you shortly with further updates.\n\nThank you for your patience and understanding.\n\nSmile Foundation\nEmergency Response Team\nsmilefoundation832@gmail.com ";
     // Recipient's email ID needs to be mentioned.
     String to = ab.getEmail();
     
     
     
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
         message.setSubject("Request Confirmation");
         
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
	
	public void sendEmail(educationHelpBean eb) {
		
		 //Message
		String sendmessage = "Dear "+eb.getReportername()+",\n\nYour request has been successfully received. Please wait while our Request Management Team reviews and approves it. We will notify you shortly with further updates.\n\nThank you for your patience and understanding.\n\nSmile Foundation\nEmergency Response Team\nsmilefoundation832@gmail.com ";
     // Recipient's email ID needs to be mentioned.
     String to = eb.getEmail();
     
     
     
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
         message.setSubject("Request Confirmation");
         
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
	
	public void sendEmail(disasterHelpBean db) {
		
		 //Message
		String sendmessage = "Dear "+db.getName()+",\n\nYour request has been successfully received. Please wait while our Request Management Team reviews and approves it. We will notify you shortly with further updates.\n\nThank you for your patience and understanding.\n\nSmile Foundation\nEmergency Response Team\nsmilefoundation832@gmail.com ";
    // Recipient's email ID needs to be mentioned.
    String to = db.getEmail();
    
    
    
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
        message.setSubject("Request Confirmation");
        
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
