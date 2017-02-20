package me.fourthcafe.dao.face;

import java.util.List;

import org.springframework.stereotype.Repository;

import me.fourthcafe.dto.Member;

@Repository
public interface MemberDao {
	
	public void regist(Member member);
	
	
	
	public List<Member> getAllMember();
	
	
	
	public int checkDuplicateId(String userId);
	
	
	
	public Member login(Member member);
	
	
	
	public void delete(Member member);
	
	
	
	public void update(Member member);
	
}