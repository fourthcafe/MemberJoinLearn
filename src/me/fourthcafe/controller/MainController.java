package me.fourthcafe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import me.fourthcafe.dao.face.MemberDao;
import me.fourthcafe.dto.Member;

@Controller
@RequestMapping("/")
public class MainController {
	
	@Autowired
	private MemberDao memberDao;
	
	
	
	@RequestMapping("/")
	public ModelAndView index() {
		List<Member> allMember = memberDao.getAllMember();
		
		ModelAndView mav = new ModelAndView("/index");
		mav.addObject("allMember", allMember);
		
		return mav;
	}
}
