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
	
}
