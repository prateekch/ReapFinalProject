package com.reap.springmvc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user")
@SuppressWarnings("serial")
public class User implements Serializable {

	@Id
	@GeneratedValue
	@Column(name = "id", length = 11)
	private int id;

	@Column(name = "Name")
	private String Name;

	@Column(name = "userName")
	private String userName;

	@Column(name = "password")
	private String password;

	@Column(name = "role")
	private String role;

	// CAN BE USED TO SAVE USER IMAGE
	/*
	 * @Column(name = "image") private byte[] image;
	 */
	@OneToOne
	private EarningBadges earningbadges;

	@OneToOne
	private GivingBadges givingbadges;

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public EarningBadges getEarningbadges() {
		return earningbadges;
	}

	public void setEarningbadges(EarningBadges earningbadges) {
		this.earningbadges = earningbadges;
	}

	public GivingBadges getGivingbadges() {
		return givingbadges;
	}

	public void setGivingbadges(GivingBadges givingbadges) {
		this.givingbadges = givingbadges;
	}
}