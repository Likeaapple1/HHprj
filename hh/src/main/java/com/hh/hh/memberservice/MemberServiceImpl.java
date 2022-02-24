package com.hh.hh.memberservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hh.hh.member.dao.MemberDao;
import com.hh.hh.member.entity.MemberDto;

@Service
@Transactional
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao dao;
	
	// 암호화
	//@Autowired
	//private PasswordEncoder passwordencoder;
	
	@Override
	public MemberDto login(MemberDto dto) throws Exception {
		MemberDto dbUser = dao.getMember(dto);
		if(dbUser == null) {
			return null;
		}
		//암호화 구현 X
		if(dto.getMemberPassword(). equals(dbUser.getMemberPassword())) {
			return dbUser;
		}else {
			return null;
		}
	}
}
