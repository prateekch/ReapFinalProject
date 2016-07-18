package com.reap.springmvc.dao;

import java.util.List;

import com.reap.springmvc.model.KarmaBadges;
import com.reap.springmvc.model.User;

public interface ReapDAO {
	public void save(User user);

	public User findUserByName(String userName, String password);

	public User SearchUser(String userName);

	public void updateReceiverbadge(User user, String badge);

	public void saveKarma(KarmaBadges karma, User user);

	public List listkarma();
	
	public int pointcount(User user);

	
}
