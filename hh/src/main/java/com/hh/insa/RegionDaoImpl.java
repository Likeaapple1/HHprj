package com.hh.insa;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RegionDaoImpl implements RegionDao {
	// MyBatis 객체 의존 주입
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<RegionVo> list() {
		RegionDao dao = (RegionDao) sqlSession.getMapper(RegionDao.class);
		List<RegionVo> list = dao.list();
		return list;
	}

	@Override
	public int add(RegionVo r) {
		RegionDao dao = (RegionDao) sqlSession.getMapper(RegionDao.class);
		int result = dao.add(r);
		return result;
	}

	@Override
	public int remove(RegionVo r) {
		RegionDao dao = (RegionDao) sqlSession.getMapper(RegionDao.class);
		int result = dao.remove(r);
		return result;
	}

	@Override
	public int modify(RegionVo r) {
		RegionDao dao = (RegionDao) sqlSession.getMapper(RegionDao.class);
		int result = dao.modify(r);
		return result;
	}

}

