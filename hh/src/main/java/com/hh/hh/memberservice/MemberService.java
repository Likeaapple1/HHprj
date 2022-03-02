package com.hh.hh.memberservice;

import javax.servlet.http.HttpServletRequest;

import com.hh.hh.member.entity.MemberDto;

public interface MemberService {

	int join(MemberDto dto, HttpServletRequest req) throws Exception;
	MemberDto login(MemberDto dto) throws Exception;

}
