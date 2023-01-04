package com.nagarro.Library.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.nagarro.Library.entity.Book;
import com.nagarro.Library.service.BookService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Bookcontroller {

	@Autowired
	private BookService service;
	
	@RequestMapping("/Logout")
	private String logout()
	{
		return "redirect:http://localhost:8081/Login";
	}
	
	@GetMapping("/")
	public String home(Model  m)
	{
		
		List<Book> bookList= service.getAllBook();
		m.addAttribute("bookList",bookList);
		
		return "index.jsp";
	}
	
	@GetMapping("/addBook")
	public String addBook()
	{
		return "add.jsp";
	}
	
	@RequestMapping("/register")
	public String bookRegistration(@ModelAttribute Book b)
	{

	

		System.out.println(b);
		service.addBook(b);
		return "redirect:/";
	}
	
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable int id , HttpSession session)
	{
		Book b = service.getBookById(id);
		session.setAttribute("code",b.getId()); 
		session.setAttribute("date", b.getDate());
		return "redirect:/edit.jsp";
	}
	
	@PostMapping("/update")
	public String UpdateBook(@ModelAttribute Book b)
	{
		service.addBook(b);
		return "redirect:/";
	}
	@GetMapping("/delete/{id}")
	public String DeleteBook(@PathVariable int id)
	{
		service.deleteBook(id);
		return "redirect:/";
	}
	
}
