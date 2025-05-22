package com.app.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.app.entity.Book;

public class BookDAO {
	
	public static Session getConnection() {
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Book.class).buildSessionFactory();
		Session session=factory.openSession();
		return session;
	}
	
	public static int addBook(Book b) {
		Session session=null;
		try {
			session=getConnection();
			session.beginTransaction();
			session.persist(b);
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
	
	public static List<Book> getAllBooks(){
		Session session=null;
		
		try {
			session=getConnection();
			session.beginTransaction();
		
			Query query = session.createQuery("from Book");
			List<Book> l=query.list();
			return l;
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		finally {
			session.close();
		}
	}
	
	public static Book getBookById(int id) {
		Session session=null;
		try {
			session=getConnection();
			session.beginTransaction();
			Book book=session.get(Book.class, id);
			return book;
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		finally {
			session.close();
		}
	}
	
	public static int updateBook(Book book) {
		Session session=null;
		try {
			session=getConnection();
			session.beginTransaction();
			session.merge(book);
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
	
	public static int delById(int id) {
		Session session=null;
		try {
			session=getConnection();
			session.beginTransaction();
			Book book=session.get(Book.class, id);
			
			
			session.remove(book);
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
	
	

}
