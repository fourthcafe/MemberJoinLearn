package me.fourthcafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.fourthcafe.dao.face.MemberDao;
import me.fourthcafe.dto.Member;
import me.fourthcafe.service.face.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	
	
	@Override
	public boolean regist(Member member) {
		int checkDuplicateId = memberDao.checkDuplicateId(member.getUserId());
		if (checkDuplicateId == 0) {
			memberDao.regist(member);
			return true;
			
		} else {
			return false;
		}
	}



	@Override
	public List<Member> getAllMember() {
		return memberDao.getAllMember();
	}



	@Override
	public Member login(Member member) {
		return memberDao.login(member);
	}


	
	@Override
	public void update(Member member) {
		memberDao.update(member);
	}
	
	
	
	@Override
	public void delete(Member member) {
		memberDao.delete(member);
	}
}
