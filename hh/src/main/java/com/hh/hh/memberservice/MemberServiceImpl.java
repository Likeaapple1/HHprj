package com.hh.hh.memberservice;

import java.lang.System.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hh.hh.member.dao.MemberDao;
import com.hh.hh.member.entity.MemberDto;

import lombok.extern.slf4j.Slf4j;

@Service
@Transactional
@Slf4j
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
			System.out.println(dbUser);
			return null;
		}
		//암호화 구현 X
		if(dto.getEmpPassword(). equals(dbUser.getEmpPassword())) {
			
			System.out.println(dbUser);
			return dbUser;
		}else {
			System.out.println(dbUser);
			return null;
		}
	}
}
