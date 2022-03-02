package com.hh.hh.member.dao;

import com.hh.hh.member.entity.MemberDto;

public interface MemberDao {
	
	int getMemberSeq() throws Exception;
	
	int insertMember(MemberDto dto) throws Exception;
	
	void uploadProfile(MemberDto dto) throws Exception;
	
	MemberDto getMember(MemberDto dto) throws Exception;

	int updateMember(MemberDto dto);
}
