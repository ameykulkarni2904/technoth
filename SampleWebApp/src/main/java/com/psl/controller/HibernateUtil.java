package com.psl.controller;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	
	public static SessionFactory getFactory(){

		Configuration configuration=new Configuration();
		configuration.addResource("com/psl/model/Admin.hbm.xml");
		configuration.configure();
		SessionFactory factory=configuration.buildSessionFactory();
		return factory;
	}
}
