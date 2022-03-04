
package com.hh.hh.resign.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.resign.entity.ResignDto;



@Repository
public class ResignDaoImpl implements ResignDao {
	
	@Autowired
	private SqlSession ss;

	@Override
	public int getNoticeCnt() throws Exception {
		return ss.selectOne("history.getNoticeCnt");
	}

	@Override
	public List<ResignDto> getHistoryMeber(ResignDto vo) throws Exception {
		return ss.selectList("resign.getResignList");
	}

}


