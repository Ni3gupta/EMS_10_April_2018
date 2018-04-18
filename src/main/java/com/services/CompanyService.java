package com.services;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernateutils.HibernateUtil;
import com.model.Companybean;


public class CompanyService {

	public boolean Cmp_service(Companybean cmp_bean) {
		Session session = HibernateUtil.openSession();
		Transaction tx = null;
		try {
			tx = session.getTransaction();
			tx.begin();
			session.saveOrUpdate(cmp_bean);
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}

		return true;
	}

}
