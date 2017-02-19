package me.fourthcafe.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@RequestMapping("/join")
	public ModelAndView join() {
		ModelAndView mav = new ModelAndView("/member/join");
		return mav;
	}
	
	
	
	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("/member/login");
		return mav;
	}
}
