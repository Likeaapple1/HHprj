package com.hh.hh.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.member.entity.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public MemberDto getMember(MemberDto dto) throws Exception {
		return sqlsession.selectOne("member.getMember", dto);
	}

}