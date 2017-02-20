package me.fourthcafe.controller.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import me.fourthcafe.dto.Member;
import me.fourthcafe.service.face.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	
	@RequestMapping("/join")
	public ModelAndView join() {
		ModelAndView mav = new ModelAndView("/member/join");
		return mav;
	}
	
	
	
	@RequestMapping("/regist")
	public ModelAndView regist(Member member) {
		ModelAndView mav = new ModelAndView();
		
		boolean isRegist = memberService.regist(member);
		if (isRegist) {
			mav.setViewName("redirect:/");
			return mav;
			
		} else {
			mav.setViewName("/member/join-fail");
			return mav;
		}
	}
	
	
	
	@RequestMapping("/login-page")
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("/member/login-page");
		return mav;
	}
	
	
	
	@RequestMapping("/login")
	public ModelAndView login(HttpSession session, Member member) {
		Member loginMember = memberService.login(member);
		
		ModelAndView mav = new ModelAndView();
		if (loginMember != null) {
			session.setAttribute("member", loginMember);
			mav.setViewName("redirect:/");
			return mav;
			
		} else {
			mav.setViewName("/member/login-page");
			return mav;
		}
	}
	
	
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	
	
	@RequestMapping("/read")
	public ModelAndView read() {
		List<Member> allMember = memberService.getAllMember();
		
		ModelAndView mav = new ModelAndView("/member/read");
		mav.addObject("allMember", allMember);
		return mav;
	}
	
	
	
	@RequestMapping("/myinfo")
	public ModelAndView myinfo(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		Member member = (Member) session.getAttribute("member");
		if (member != null) {
			mav.setViewName("/member/myinfo");
			mav.addObject("member", member);
			return mav;
		} else {
			mav.setViewName("redirect:/");
			return mav;
		}
	}
	
	
	
	@RequestMapping("/update")
	public ModelAndView update(Member member) {
		memberService.update(member);
//		TODO: 정보 갱신하기
//		session.setAttribute("member", value);
		
		ModelAndView mav = new ModelAndView("redirect:/");
		return mav;
	}
	
	
	
	@RequestMapping("/delete")
	public ModelAndView delete(HttpSession session) {
		Member member = (Member) session.getAttribute("member");
		if (member != null) {
			memberService.delete(member);
			session.invalidate();
		}
		
		ModelAndView mav = new ModelAndView("redirect:/");
		return mav;
	}
	
}
