package utilities;

import java.io.UnsupportedEncodingException;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class MailUtil
{    
    public static void sendMail(String to, String subject, String body, boolean bodyIsHTML) throws MessagingException
    {       
        // 1 - get a mail session
        Properties props = new Properties();
        props.put("mail.transport.protocol", "smtps");
        props.put("mail.smtps.host", "smtp.gmail.com");
        props.put("mail.smtps.port", 465);
        props.put("mail.smtps.auth", "true");
        props.put("mail.smtps.quitwait", "false");        
        Session session = Session.getDefaultInstance(props);
        session.setDebug(true);

        // 2 - create a message
        Message message = new MimeMessage(session);
        message.setSubject(subject);
        if (bodyIsHTML)
            message.setContent(body, "text/html");
        else
            message.setText(body);

        // 3 - address the message
        String from = "cis424project@gmail.com";
        String fromName = "CPP Alumni Network";
        String password = "finalproject";
        
        InternetAddress ia = new InternetAddress(from);
        
        try
        {
            ia.setPersonal(fromName);
        }
        catch (UnsupportedEncodingException e)
        {
            System.out.println("Error setting personal name: " + e.getLocalizedMessage());
        }
        
        Address fromAddress = ia;
        Address toAddress = new InternetAddress(to);
        message.setFrom(fromAddress);
        message.setRecipient(Message.RecipientType.TO, toAddress);

        // 4 - send the message
        Transport transport = session.getTransport();
        transport.connect(from, password);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();
    }
}