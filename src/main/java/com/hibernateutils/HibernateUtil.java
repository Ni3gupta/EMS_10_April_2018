package com.hibernateutils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.cfg.Configuration;

@SuppressWarnings("deprecation")
public class HibernateUtil {

	private static SessionFactory sessionFactory;
	private static Configuration cfg;
	static {
		try {
			cfg = new Configuration();
			cfg.configure("resource/hibernate.cfg.xml");
			sessionFactory = cfg.buildSessionFactory();
			// sessionFactory = new
			// AnnotationConfiguration().configure("resource/hibernate.cfg.xml").buildSessionFactory();
		} catch (Throwable ex) {
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		} finally {
			
		}
	}

	public static Session openSession() {
		return sessionFactory.openSession();
	}
}
