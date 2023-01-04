package com.nagarro.Library.service;

import java.util.List;
import java.util.Optional;

import com.nagarro.Library.entity.Book;
import com.nagarro.Library.repository.BookRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookService {
 
	@Autowired
	private BookRepo repo;
	public void addBook(Book b)
	{
		repo.save(b);
	}
	public List<Book>getAllBook()
	{
		return repo.findAll();
	}
	public Book getBookById(int id)
	{
		Optional<Book> b = repo.findById(id);
		if(b.isPresent())
		{
			return b.get();
		}
		return null;
	}
	public void deleteBook(int id)
	{
		repo.deleteById(id);
	}

}
