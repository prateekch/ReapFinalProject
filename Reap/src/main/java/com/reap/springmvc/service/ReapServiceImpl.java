package com.reap.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reap.springmvc.dao.ReapDAO;
import com.reap.springmvc.model.KarmaBadges;
import com.reap.springmvc.model.User;

@Service("loginService")
public class ReapServiceImpl implements ReapService {

	@Autowired
	private ReapDAO reapDAO;

	public void setreapDAO(ReapDAO reapDAO) {
		this.reapDAO = reapDAO;
	}

	@Override
	public void save(User user) {
		user.setUserName(user.getUserName());
		reapDAO.save(user);

	}

	public void saveKarma(KarmaBadges karma, User user) {
		reapDAO.saveKarma(karma, user);
	}

	public void updateReceiverbadge(User user, String badge) {
		reapDAO.updateReceiverbadge(user, badge);
	}

	@Override
	public User findUserByName(String userName, String password) {

		return reapDAO.findUserByName(userName, password);
	}

	@Override
	public User SearchUser(String userName) {
		return reapDAO.SearchUser(userName);

	}

	@Override
	public List listkarma() {
		return reapDAO.listkarma();
	}

	@Override
	public int pointcount(User user) {
		return reapDAO.pointcount(user);
	}

}
