package com.reap.springmvc.service;

import java.util.List;

import com.reap.springmvc.model.KarmaBadges;
import com.reap.springmvc.model.User;

public interface ReapService {
	public void save(User user);

	public void saveKarma(KarmaBadges karma, User user);

	public User findUserByName(String userName, String password);

	public User SearchUser(String userName);

	public void updateReceiverbadge(User user, String badge);

	public List listkarma();
	public int pointcount(User user);

}
