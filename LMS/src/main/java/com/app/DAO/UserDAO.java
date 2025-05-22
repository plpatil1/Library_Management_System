package com.app.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.app.entity.User;

public class UserDAO {
	
	public static Session getConnection() {
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(User.class).buildSessionFactory();
		Session session=factory.openSession();
		return session;
	}
	
	public static int RegisterUser(User u) {
		Session session=null;
		try {
			session=getConnection();
			session.beginTransaction();
			session.persist(u);
			session.getTransaction().commit();
			return 1;
		}
		catch(Exception e) {
			e.printStackTrace();
			return 0;
		}
		finally {
			session.close();
		}
	}
	
	public static boolean isLogin(String username,String password,String usertype) {
		Session session=null;
		try {
			session=getConnection();
			session.beginTransaction();
			Query query = session.createQuery("from User where name=:name and password=:password and userType=:usertype");
			query.setParameter("name", username);
			query.setParameter("password", password);
			query.setParameter("usertype", usertype);
			
			boolean status = !query.list().isEmpty();
			
			return status;
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			session.close();
		}
	}

}
