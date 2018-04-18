package com.services;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernateutils.HibernateUtil;
import com.model.Companybean;

public class CompanyDisplayService {
    
    @SuppressWarnings("unchecked")
	public List<Companybean> getListOfCompanybeans(){
        List<Companybean> list = new ArrayList<Companybean>();
        Session session = HibernateUtil.openSession();
        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from Companybean").list();   
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
    }
}