package com.reap.springmvc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "karmaBadges")
public class KarmaBadges {

	// MODEL FOR KARMABADGES ,IT MAINTAINS THE DETAILS OF KARMA
	@Id
	@GeneratedValue
	private int id;

	private String giver;

	private String receiver;

	private String badge;

	private String reason;

	private String karma;

	public String getGiver() {
		return giver;
	}

	public void setGiver(String giver) {
		this.giver = giver;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getKarma() {
		return karma;
	}

	public void setKarma(String karma) {
		this.karma = karma;
	}

	private Date date;

	public String getBadge() {
		return badge;
	}

	public void setBadge(String badge) {
		this.badge = badge;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
