package com.hh.hh.appr.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.appr.entity.ApprDto;

@Repository
public class ApprDaoImpl implements ApprDao{
	
	@Autowired
	private SqlSession ss;

	@Override
	public List<ApprDto> getOrgList() throws Exception {
		return ss.selectList("appr.getOrgList");
	}

	@Override
	public ApprDto getPerson(ApprDto dto) {
		return ss.selectOne("appr.getPerson", dto);
	}
	
	@Override
	public ApprDto getPerson1(ApprDto dto) {
		return ss.selectOne("appr.getPerson1", dto);
	}

	@Override
	public ApprDto getPerson2(ApprDto dto) {
		return ss.selectOne("appr.getPerson2", dto);
	}

	@Override
	public ApprDto getPerson3(ApprDto dto) {
		return ss.selectOne("appr.getPerson3", dto);
	}

	@Override
	public ApprDto getPerson4(ApprDto dto) {
		return ss.selectOne("appr.getPerson4", dto);
	}

	@Override
	public ApprDto getPerson5(ApprDto dto) {
		return ss.selectOne("appr.getPerson5", dto);
	}

	@Override
	public ApprDto getPerson6(ApprDto dto) {
		return ss.selectOne("appr.getPerson6", dto);
	}

	@Override
	public ApprDto getPerson7(ApprDto dto) {
		return ss.selectOne("appr.getPerson7", dto);
	}

}
