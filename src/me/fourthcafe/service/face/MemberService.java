package me.fourthcafe.service.face;

import java.util.List;

import me.fourthcafe.dto.Member;

public interface MemberService {
	
	public boolean regist(Member member);
	
	
	
	public List<Member> getAllMember();
	
	
	
	public Member login(Member member);



	public void update(Member member);
	
	
	
	public void delete(Member member);
}
