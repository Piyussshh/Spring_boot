package com.nagarro.Library.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table	(name = "book")
public class Book {
    
	@Id
	private int Id;
	private String Name;
	private String Author;
	private String Date;
	
	
	
	public Book() {
		super();
		//TODO Auto-generated constructor stub
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAuthor() {
		return Author;
	}
	public void setAuthor(String author) {
		Author = author;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	@Override
	public String toString() {
		return "Book [Id=" + Id + ", Name=" + Name + ", Author=" + Author + ", Date=" + Date + "]";
	}
	
}
