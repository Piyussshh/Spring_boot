package com.nagarro.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.nagarro.tables.Person;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Login {
	
	@RequestMapping("/Login")
	
	public String authenticate(HttpServletRequest request ,HttpServletRequest response )
	{
	     List<Person> l1=new ArrayList<Person>(); 
			
			String uname=request.getParameter("uname");
			String pass=request.getParameter("pass");
			
			Configuration con=new Configuration().configure().addAnnotatedClass(Person.class);
			ServiceRegistry reg=new ServiceRegistryBuilder().applySettings(con.getProperties()).buildServiceRegistry();
			SessionFactory sf=con.buildSessionFactory(reg);
			Session session=sf.openSession();
			session.beginTransaction();
			
			Person p = new Person("piyush","0000");
			
			session.save(p);
			
			
			
			Query q=session.createQuery("from Person where username='" + uname + "' and password='"+ pass +"'");
			l1=q.list();
			session.getTransaction().commit();
			
			if(l1.size()!=0)
			{
				HttpSession sess=request.getSession();
				sess.setAttribute("username", uname);
				return "redirect:http://localhost:8085/";
			}
			else
				return "index.jsp";	
	}
	
	

}
