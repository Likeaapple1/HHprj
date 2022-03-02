package com.hh.hh.annual.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.annual.entity.AnnualDto;

@Repository
public class AnnualDaoImpl implements AnnualDao{

	@Autowired
	private SqlSession sqlsession;

	@Override
	public List<AnnualDto> getHoliList(long empNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList("annual.selectHoliList",empNo);
	}

}
