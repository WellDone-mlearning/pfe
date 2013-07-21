package org.mlearning.business;

import java.io.IOException;
import java.util.List;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.mlearning.dto.users.User;


/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static SessionFactory sessionFactory;
	private static ServiceRegistry serviceRegistry;

	private static SessionFactory configureSessionFactory() throws HibernateException {
	    Configuration configuration = new Configuration();
	    configuration.configure();
	    serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();        
	    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	    return sessionFactory;
	}
	
    
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("\n\n\n\n\n************************ -> ");
		/*
		User user = new User();
		
		user.setLogin("XXXXXXXXXXXXX");
		user.setPassword("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
		user.setEmail("HHHHHala@test.com");
		user.setNom("GGGGGGGGGGGGGGGGGGGGGGGGGGGG");
		
		SessionFactory sessionFoctory = configureSessionFactory();

		Session session = sessionFoctory.openSession();
		session.beginTransaction();
		session.save(user);
		
		session.getTransaction().commit();
		session.close();
		*/
		
	}
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		SessionFactory sessionFoctory = configureSessionFactory();
		Session session = sessionFoctory.openSession();
		session.beginTransaction();
			
		String Req = "FROM User WHERE login='" + login + "' AND password='" + password + "'";
		Query q = session.createQuery(Req);
		User u = (User) q.uniqueResult();
			
		if(u==null) response.sendRedirect("index.jsp?code=1");
		else{
			request.getSession().setAttribute("loggedUser", u);
			if( u.getType()==0 ){response.sendRedirect("AdministrateurServlet");}
			if( u.getType()==1 ) request.getRequestDispatcher("Tuteur/index.jsp").forward(request, response);
			else if( u.getType()==2 ) request.getRequestDispatcher("Apprenant/index.jsp").forward(request, response);
		}
		  
	}
}
