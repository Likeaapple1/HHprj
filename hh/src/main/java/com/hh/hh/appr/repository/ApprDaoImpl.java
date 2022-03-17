package com.hh.hh.appr.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.appr.entity.ApprDto;
import com.hh.hh.appr.entity.ApprLineDto;
import com.hh.hh.appr.entity.ApprovalDto;

@Repository
public class ApprDaoImpl implements ApprDao{
	
	@Autowired
	private SqlSession ss;

	@Override
	public List<ApprDto> getOrgList() throws Exception {
		return ss.selectList("appr.getOrgList");
	}

	@Override
	public List<ApprLineDto> getLineList(ApprLineDto linedto) throws Exception {
		return ss.selectList("appr.getLineList", linedto);
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

	@Override
	public int insertLine(ApprLineDto linedto) throws Exception {
		return ss.insert("appr.insertLine", linedto);
	}

	@Override
	public int deleteLine(ApprLineDto linedto) throws Exception {
		return ss.delete("appr.deleteLine", linedto);
	}

	@Override
	public ApprDto getUser1(ApprDto dto) throws Exception {
		return ss.selectOne("appr.getUser1", dto);
	}

	@Override
	public ApprDto getUser2(ApprDto dto) throws Exception {
		return ss.selectOne("appr.getUser2", dto);
	}

	@Override
	public ApprDto getUser3(ApprDto dto) throws Exception {
		return ss.selectOne("appr.getUser3", dto);
	}

	@Override
	public ApprDto getUser4(ApprDto dto) throws Exception {
		return ss.selectOne("appr.getUser4", dto);
	}

	@Override
	public ApprDto getViewer1(ApprDto dto) throws Exception {
		return ss.selectOne("appr.getViewer1", dto);
	}

	@Override
	public ApprDto getViewer2(ApprDto dto) throws Exception {
		return ss.selectOne("appr.getViewer2", dto);
	}

	@Override
	public ApprDto getViewer3(ApprDto dto) throws Exception {
		return ss.selectOne("appr.getViewer3", dto);
	}

	@Override
	public ApprDto getViewer4(ApprDto dto) throws Exception {
		return ss.selectOne("appr.getViewer4", dto);
	}

	@Override
	public int insertApproval(ApprovalDto apprdto) throws Exception {
		return ss.insert("appr.insertApproval", apprdto);
	}

	@Override
	public List<ApprovalDto> getRecList(ApprovalDto appr) throws Exception {
		return ss.selectList("appr.getRecList", appr);
	}

}
