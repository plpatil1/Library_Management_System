package com.app.entity;

import jakarta.persistence.*;

@Entity
@Table(name="book")
public class Book {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column
	private String title;
	@Column
	private String author;
	@Column
	private int quantity;
	@Column
	private String availaible;
	
	public void setId(int id) {
		this.id = id;
	}

	public Book() {}
	
	public Book(String t,String a,int q,String av) {
		this.title=t;
		this.author=a;
		this.quantity=q;
		this.availaible=av;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getAvailaible() {
		return availaible;
	}

	public void setAvailaible(String availaible) {
		this.availaible = availaible;
	}

	public int getId() {
		return id;
	}
	
	

}
