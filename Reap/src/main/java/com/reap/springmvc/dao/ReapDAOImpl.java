package com.reap.springmvc.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.reap.springmvc.model.EarningBadges;
import com.reap.springmvc.model.GivingBadges;
import com.reap.springmvc.model.KarmaBadges;
import com.reap.springmvc.model.User;



@Repository("loginDAO")
public class ReapDAOImpl implements ReapDAO {

	@Autowired
	private SessionFactory sessionFactory;

	// METHOD USED TO SAVE USER DETAILS AT REGISTRATION
	@Override
	public void save(User user) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();

		try {
			EarningBadges earningbadges = new EarningBadges();
			earningbadges.setGold(0);
			earningbadges.setBronze(0);
			earningbadges.setSilver(0);
			earningbadges.setId(user.getId());
			GivingBadges givingBadges = new GivingBadges();
			if (user.getRole().equalsIgnoreCase("user")) {
				givingBadges.setGold(3);
				givingBadges.setSilver(2);
				givingBadges.setBronze(1);
			} else if (user.getRole().equalsIgnoreCase("supervisor")) {
				givingBadges.setGold(6);
				givingBadges.setSilver(3);
				givingBadges.setBronze(2);

			} else {
				givingBadges.setGold(9);
				givingBadges.setSilver(6);
				givingBadges.setBronze(3);
			}
			givingBadges.setId(user.getId());

			session.save(earningbadges);
			session.save(givingBadges);

			user.setGivingbadges(givingBadges);
			user.setEarningbadges(earningbadges);

			session.save(user);
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
		session.close();

	}

	// UPDATES THE BADGES OF RECEIVER WHO RECEIVES KARMA
	public void updateReceiverbadge(User user, String badge) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			EarningBadges earningBadges = user.getEarningbadges();
			if (badge.equalsIgnoreCase("gold")) {
				earningBadges.setGold(user.getEarningbadges().getGold() + 1);
			} else if (badge.equalsIgnoreCase("silver")) {
				earningBadges.setSilver(user.getEarningbadges().getSilver() + 1);
			} else {
				earningBadges.setBronze(user.getEarningbadges().getBronze() + 1);

			}
			session.update(earningBadges);
			user.setEarningbadges(earningBadges);
			session.update(user);
			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
		session.close();

	}

	// SAVES THE KARMA AT TIME OF RECOGNIZATION AND UPDATES THE BADGES OF GIVER
	public void saveKarma(KarmaBadges karma, User user) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		try {
			GivingBadges givingBadges = user.getGivingbadges();
			if (karma.getBadge().equalsIgnoreCase("gold")) {
				givingBadges.setGold(user.getGivingbadges().getGold() - 1);
			} else if (karma.getBadge().equalsIgnoreCase("silver")) {
				givingBadges.setSilver(user.getGivingbadges().getSilver() - 1);
			} else {
				givingBadges.setBronze(user.getGivingbadges().getBronze() - 1);
			}

			session.update(givingBadges);
			user.setGivingbadges(givingBadges);
			karma.setGiver(user.getUserName());
			karma.setDate(new Date());
			session.save(karma);
			session.update(user);

			transaction.commit();
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
		session.close();

	}

	// SEARCHES USER AND IF VALID THEN PROCEDES FOR LOGIN
	@Override
	public User findUserByName(String userName, String password) {
		Session session = sessionFactory.openSession();
		Criteria criteria = session.createCriteria(User.class).add(Restrictions.eq("userName", userName))
				.add(Restrictions.eq("password", password));
		return (User) criteria.uniqueResult();
	}

	// SEARCHES USER BY HIS UNIQUE EMAIL WHICH IS SET AS USERNAME
	public User SearchUser(String userName) {

		Session session = sessionFactory.openSession();
		Criteria criteria = session.createCriteria(User.class).add(Restrictions.eq("userName", userName));
		return (User) criteria.uniqueResult();

	}

	// RETREIVES THE KARMA FROM KARMABADGES TABLE
	public List listkarma() {

		Session session = sessionFactory.openSession();
		List karma = (List) session.createCriteria(KarmaBadges.class).addOrder(Order.desc("date")).list();

		return karma;

	}
 public int pointcount(User user){
 int point=(user.getEarningbadges().getGold()*30)+(user.getEarningbadges().getSilver()*20)+(user.getEarningbadges().getBronze()*10);	 
 return point;
}


}