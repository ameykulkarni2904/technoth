package com.psl.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.psl.dao.HibernateUtil;
import com.psl.model.Participant;
 
@Controller
@RequestMapping("/")
public class SendEmailController {
 
    @Autowired
    private JavaMailSender mailSender;
     
	@RequestMapping(value = "/sendEmail", method = RequestMethod.GET)
    public String sendEmail(){
//    	String recipientAddresses[] = {"ankit_kodalikar@persistent.co.in", "amey_kulkarni2@persistent.co.in"};
//    	doSendEmail(recipientAddresses, "test message", "message sent from web app");
    	return "sendEmail";
    }
	@RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
    public String sendEmailPost(Model model,@RequestParam("msg")String msg,@RequestParam("subject")String subject){
		
    	String recipientAddresses[] = {}; //= {"ankit_kodalikar@persistent.co.in", "amey_kulkarni2@persistent.co.in"};
//    	doSendEmail(recipientAddresses, "test message", "message sent from web app");
		List<Participant> recipients = getParticipants();
		int cnt = 0;
		for(Participant p : recipients){
			recipientAddresses[cnt] = p.getMail_id();
			cnt++;
		}
		
		doSendEmail(recipientAddresses, subject, msg);
		
    	return "sendEmail";
    }
    public void doSendEmail(String recipientAddresses[], String subject, String message) {
       
        SimpleMailMessage email = new SimpleMailMessage();
        
        email.setTo(recipientAddresses);
        email.setSubject(subject);
        email.setText(message);
         
        mailSender.send(email);
         
       
    }
    private List<Participant> getParticipants() {
        // TODO Auto-generated method stub
       
        SessionFactory sessionFactory=HibernateUtil.getFactory();
        Session session=sessionFactory.openSession();
        Transaction transaction= session.beginTransaction();
        //session.save(milestone);
        Query q=session.createQuery("from Participant");
   
        List<Participant> list=q.list();
        for (Participant participant : list) {
            System.out.println("particpant: "+participant);
        }
        session.close();
       
        return list;
       
       
//        return null;
    }

    
}