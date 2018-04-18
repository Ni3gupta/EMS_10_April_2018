package com.services;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernateutils.HibernateUtil;

public class DeleteService {

	public boolean delete_company(String cmp_id) {
		Session session = HibernateUtil.openSession();
        Transaction tx = null;
        try {
        tx=session.getTransaction();
        tx.begin();
        Query q=session.createQuery("delete from Companybean where id="+cmp_id);
        q.executeUpdate();
        tx.commit();
        }catch (Exception e) {
        	if (tx != null) {
				tx.rollback();
				
			}
		}finally {
				session.close();
		}
        if(tx==null) {
		return true;
        }else {
        	return false;
        }
	}
}
