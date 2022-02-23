package com.hh.hh.memberservice;

import com.hh.hh.member.entity.MemberDto;

public interface MemberService {

	MemberDto login(MemberDto dto) throws Exception;

}
