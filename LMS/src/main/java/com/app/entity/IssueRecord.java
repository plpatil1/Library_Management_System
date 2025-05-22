package com.app.entity;

import jakarta.persistence.*;

@Entity
@Table(name="issuerecord")
public class IssueRecord {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int bookid;
	private int userid;
	private String issuedate;
	private String duedate;
	private String returndate;
	
	public IssueRecord() {}

	public IssueRecord(int id, int bookid, int userid, String issuedate, String duedate, String returndate) {
		super();
		this.id = id;
		this.bookid = bookid;
		this.userid = userid;
		this.issuedate = issuedate;
		this.duedate = duedate;
		this.returndate = returndate;
	}

	public int getBookid() {
		return bookid;
	}

	public void setBookid(int bookid) {
		this.bookid = bookid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getIssuedate() {
		return issuedate;
	}

	public void setIssuedate(String issuedate) {
		this.issuedate = issuedate;
	}

	public String getDuedate() {
		return duedate;
	}

	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}

	public String getReturndate() {
		return returndate;
	}

	public void setReturndate(String returndate) {
		this.returndate = returndate;
	}

	public int getId() {
		return id;
	}
	
	

}
