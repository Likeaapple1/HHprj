/*
package com.hh.hh.resign.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.resign.controller.ResignHistoryVo;

@Repository
public class ResignDaoImpl implements ResignDao {
	
	@Autowired
	private SqlSession ss;
	
	@Override
	public List<ResignHistoryVo> getHistoryMeber(ResignHistoryVo vo) throws Exception {
		return ss.selectList("history.getHistoryMeber",vo);
	}

	@Override
	public int getNoticeCnt() throws Exception {
		return ss.selectOne("history.getNoticeCnt");
	}

}

*/
