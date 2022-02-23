package com.hh.hh.insa.dao;

import java.util.*;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.insa.entity.PositionVo;

@Repository
public class PositionDaoImpl implements PositionDao {
	// MyBatis 객체 의존 주입
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<PositionVo> list() {
		PositionDao dao = (PositionDao) sqlSession.getMapper(PositionDao.class);
		List<PositionVo> list = dao.list();
		return list;
	}

	@Override
	public int add(PositionVo p) {
		PositionDao dao = (PositionDao) sqlSession.getMapper(PositionDao.class);
		int result = dao.add(p);
		return result;
	}

	@Override
	public int remove(PositionVo p) {
		PositionDao dao = (PositionDao) sqlSession.getMapper(PositionDao.class);
		int result = dao.remove(p);
		return result;
	}

	@Override
	public int modify(PositionVo p) {
		PositionDao dao = (PositionDao) sqlSession.getMapper(PositionDao.class);
		int result = dao.modify(p);
		return result;
	}

	@Override
	public int getMinBasicPay(PositionVo p) {
		PositionDao dao = (PositionDao) sqlSession.getMapper(PositionDao.class);
		int result = dao.getMinBasicPay(p);
		return result;
	}

}

