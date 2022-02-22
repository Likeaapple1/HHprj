package com.hh.insa;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DepartmentDaoImpl implements DepartmentDao {
	// MyBatis 객체 의존 주입
	@Autowired
	private SqlSession sqlSession;

	@Override
	public ArrayList<DepartmentVo> list() {
		DepartmentDao dao = (DepartmentDao) sqlSession.getMapper(DepartmentDao.class);
		ArrayList<DepartmentVo> list = dao.list();
		return list;
	}

	@Override
	public int add(DepartmentVo d) {
		DepartmentDao dao = (DepartmentDao) sqlSession.getMapper(DepartmentDao.class);
		int result = dao.add(d);
		return result;
	}

	@Override
	public int remove(DepartmentVo d) {
		DepartmentDao dao = (DepartmentDao) sqlSession.getMapper(DepartmentDao.class);
		int result = dao.remove(d);
		return result;
	}

	@Override
	public int modify(DepartmentVo d) {
		DepartmentDao dao = (DepartmentDao) sqlSession.getMapper(DepartmentDao.class);
		int result = dao.modify(d);
		return result;
	}

}

