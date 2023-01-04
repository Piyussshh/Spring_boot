package com.nagarro.tables;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Person
{
	@Id
	private String username;
	private String password;
	public Person(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	
	
}