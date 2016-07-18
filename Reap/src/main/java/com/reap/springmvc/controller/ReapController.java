package com.reap.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.reap.springmvc.model.KarmaBadges;
import com.reap.springmvc.model.User;
import com.reap.springmvc.service.ReapService;

@Controller
public class ReapController {

	@Autowired
	public ReapService loginService;

	String invalidreceiver = " ", Nobadge = " ";

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession httpSession, HttpServletRequest request, HttpServletResponse response) {
		//httpSession = request.getSession(true);
		return "login";
	}

	// LOGIN
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("userName") String userName, @RequestParam("password") String password,
			HttpSession httpSession, ModelMap model) {
		User user = loginService.findUserByName(userName, password);

		if (user == null) {
			ModelAndView modelAndView = new ModelAndView("login");
			modelAndView.addObject("msg", "Invalid Credentials !!! TRY AGAIN ");
			return modelAndView;
		}
		httpSession.setAttribute("user", user);

		return new ModelAndView("redirect:dashboard");
	}

	// REGISTER
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register(HttpSession httpSession, ModelMap model) {

		return new ModelAndView("Register", "user", new User());

	}

	// REGISTER
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute User user, Model model, HttpSession httpSession) {

		User user1 = loginService.SearchUser(user.getUserName());

		ModelAndView modelAndView;
		if (user1 == null) {
			loginService.save(user);
			httpSession.setAttribute("user", user);
			modelAndView = new ModelAndView("login");

		}

		else {
			modelAndView = new ModelAndView("Register");
			modelAndView.addObject("msg", "EMAIL ALREADY IN USE !! TRY ANOTHER");

		}
		return modelAndView;
	}

	// DASHBOARD
	@RequestMapping("/dashboard")
	public ModelAndView dash(HttpSession session, ModelMap model, HttpServletRequest request,
			HttpServletResponse response) {

		User user = (User) session.getAttribute("user");
		if (user != null) {

			List karma = (List) loginService.listkarma();

			model.addAttribute("karma", karma);
			model.addAttribute("Name", user.getName());
			model.addAttribute("Email", user.getUserName());
			model.addAttribute("Role", user.getRole());
			model.addAttribute("Gold", user.getEarningbadges().getGold());
			model.addAttribute("Silver", user.getEarningbadges().getSilver());
			model.addAttribute("Bronze", user.getEarningbadges().getBronze());
			model.addAttribute("invalidreceiver", invalidreceiver);
			model.addAttribute("Nobadge", Nobadge);
			invalidreceiver = " ";
			Nobadge = " ";
			return new ModelAndView("loginsuccess");

		} else {
			ModelAndView modelAndView = new ModelAndView("login");
			return modelAndView;
		}
	}

	// BADGES
	@RequestMapping("/badges")
	public ModelAndView badge(HttpSession session, ModelMap model, HttpServletRequest request,
			HttpServletResponse response) {
		User user = (User) session.getAttribute("user");
		ModelAndView modelAndView;
		if (user != null) {

			modelAndView = new ModelAndView("badges");
			int point=userpoint(session);
		 model.addAttribute("point",point);
			model.addAttribute("Name", user.getName());
			model.addAttribute("Email", user.getUserName());
			model.addAttribute("Role", user.getRole());
			model.addAttribute("Gold", user.getEarningbadges().getGold());
			model.addAttribute("Silver", user.getEarningbadges().getSilver());
			model.addAttribute("Bronze", user.getEarningbadges().getBronze());
			return modelAndView;
		} else {
			modelAndView = new ModelAndView("login");
			return modelAndView;
		}
	}

	// METHOD FOR SHOWING ALL BADGES SHARED AND RECEIVED
	@RequestMapping("/All")
	public String All(HttpSession session, ModelMap model) {

		User user = (User) session.getAttribute("user");
		
		if(user!=null){
			int point=userpoint(session);
			 model.addAttribute("point",point);
	
		model.addAttribute("Name", user.getName());
		model.addAttribute("Email", user.getUserName());
		model.addAttribute("Role", user.getRole());
		model.addAttribute("Gold", user.getEarningbadges().getGold());
		model.addAttribute("Silver", user.getEarningbadges().getSilver());
		model.addAttribute("Bronze", user.getEarningbadges().getBronze());

		return "All";
		}
		else{
			return "login";
		}
	}

	// BADGES HISTORY
	@RequestMapping("/Badges_History")
	public String Badg_Hist(HttpSession session, ModelMap model) {
		User user = (User) session.getAttribute("user");

		int OpeningGold = 0, OpeningSilver = 0, OpeningBronze = 0;
if(user!=null){
	int point=userpoint(session);
	 model.addAttribute("point",point);

		model.addAttribute("Name", user.getName());
		model.addAttribute("Email", user.getUserName());
		model.addAttribute("Role", user.getRole());

		if (user.getRole().equalsIgnoreCase("user")) {
			OpeningGold = 3;
			OpeningSilver = 2;
			OpeningBronze = 1;

		} else if (user.getRole().equalsIgnoreCase("supervisor")) {

			OpeningGold = 6;
			OpeningSilver = 3;
			OpeningBronze = 2;
		} else {

			OpeningGold = 9;
			OpeningSilver = 6;
			OpeningBronze = 3;
		}

		model.addAttribute("OGold", OpeningGold);
		model.addAttribute("OSilver", OpeningSilver);
		model.addAttribute("OBronze", OpeningBronze);

		model.addAttribute("GoldG", user.getGivingbadges().getGold());
		model.addAttribute("SilverG", user.getGivingbadges().getSilver());
		model.addAttribute("BronzeG", user.getGivingbadges().getBronze());

		model.addAttribute("Gold", user.getEarningbadges().getGold());
		model.addAttribute("Silver", user.getEarningbadges().getSilver());
		model.addAttribute("Bronze", user.getEarningbadges().getBronze());
		return "Badges_History";
}
else{
	return "login";
}
}

	// REDEEMED
	@RequestMapping("/Redeemed")
	public String Redeem(HttpSession session, ModelMap model) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("Name", user.getName());

		if(user!=null){
			int point=userpoint(session);
			 model.addAttribute("point",point);
					
		
		model.addAttribute("Email", user.getUserName());
		model.addAttribute("Role", user.getRole());
		model.addAttribute("Gold", user.getEarningbadges().getGold());
		model.addAttribute("Silver", user.getEarningbadges().getSilver());
		model.addAttribute("Bronze", user.getEarningbadges().getBronze());
		return "Redeemed";
	}
	else{
		return "login";
	}
}
	// RECOGNIZE KARMA
	@RequestMapping(value = "/recognize", method = RequestMethod.POST)
	public ModelAndView recog(@ModelAttribute KarmaBadges karma, ModelMap model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView;
		boolean flag = false;
		User Receiveruser = loginService.SearchUser(karma.getReceiver());
		
		if (Receiveruser != null) {

			invalidreceiver = " ";
			User user = (User) session.getAttribute("user");
			if (karma.getBadge().equalsIgnoreCase("gold")) {
				if (user.getGivingbadges().getGold() > 0) {
					flag = true;
					;
				}
			} else if (karma.getBadge().equalsIgnoreCase("silver")) {
				if (user.getGivingbadges().getSilver() > 0) {
					flag = true;
				}
			} else {
				if (user.getGivingbadges().getBronze() > 0) {
					flag = true;
				}
			}
			if (flag) {
				loginService.updateReceiverbadge(Receiveruser, karma.getBadge());
				loginService.saveKarma(karma, user);

			} else {
				Nobadge = "NO BADGES LEFT!!! SELECT OTHER ONE";
			}
			modelAndView = new ModelAndView("redirect:dashboard");
		} else {
			invalidreceiver = "INVALID NEWER EMAIL !! TRY ANOTHER";
			modelAndView = new ModelAndView("redirect:dashboard");
		}
		return modelAndView;
	}

	// BADGES RECEIVED
	@RequestMapping("/Badges_Received")
	public String Badg_Recei(HttpSession session, ModelMap model) {
		User user = (User) session.getAttribute("user");

		if(user!=null){
		model.addAttribute("Name", user.getName());
		int point=userpoint(session);
		 model.addAttribute("point",point);
	
		model.addAttribute("Email", user.getUserName());
		model.addAttribute("Role", user.getRole());
		model.addAttribute("Gold", user.getEarningbadges().getGold());
		model.addAttribute("Silver", user.getEarningbadges().getSilver());
		model.addAttribute("Bronze", user.getEarningbadges().getBronze());

		return "Badges_Received";
		}
		else{
			return "login";
		}
	}

	// BADGES SHARED
	@RequestMapping("/Badges_Shared")
	public String Badg_sha(HttpSession session, ModelMap model) {
		User user = (User) session.getAttribute("user");
		if(user!=null){
		model.addAttribute("Name", user.getName());
		int point=userpoint(session);
		 model.addAttribute("point",point);
	
		model.addAttribute("Email", user.getUserName());
		model.addAttribute("Role", user.getRole());
		model.addAttribute("Gold", user.getEarningbadges().getGold());
		model.addAttribute("Silver", user.getEarningbadges().getSilver());
		model.addAttribute("Bronze", user.getEarningbadges().getBronze());
		return "Badges_Shared";
		}
		else{
			return "login";
		}
	}

	// LOGOUT METHOD
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		session.invalidate();

		return "login";
	}
	public int userpoint(HttpSession session){
	 User user=(User) session.getAttribute("user");
		int point=loginService.pointcount(user);
		return point;
	 	
	}
}
