package com.hh.hh.insa.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.insa.entity.EmployeeVo;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	// MyBatis 객체 의존 주입
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<EmployeeVo> employeeList(Map<String, String> map) {
		EmployeeDao dao = (EmployeeDao) sqlSession.getMapper(EmployeeDao.class);
		List<EmployeeVo> list = dao.employeeList(map);
		return list;
	}

	@Override
	public int totalCount() {
		EmployeeDao dao = (EmployeeDao) sqlSession.getMapper(EmployeeDao.class);
		int result = dao.totalCount();
		return result;
	}

	@Override
	public List<EmployeeVo> pictureList(EmployeeVo emp) {
		EmployeeDao dao = (EmployeeDao) sqlSession.getMapper(EmployeeDao.class);
		List<EmployeeVo> result = dao.pictureList(emp);
		return result;
	}

	@Override
	public int employeeAdd(EmployeeVo emp) {
		EmployeeDao dao = (EmployeeDao) sqlSession.getMapper(EmployeeDao.class);
		int result = dao.employeeAdd(emp);
		return result;
	}

	@Override
	public int employeRemove(EmployeeVo emp) {
		EmployeeDao dao = (EmployeeDao) sqlSession.getMapper(EmployeeDao.class);
		int result = dao.employeRemove(emp);
		return result;
	}

	@Override
	public int employeeModify(EmployeeVo emp) {
		EmployeeDao dao = (EmployeeDao) sqlSession.getMapper(EmployeeDao.class);
		int result = dao.employeeModify(emp);
		return result;
	}

	@Override
	public int pictureAdd(EmployeeVo emp) {
		EmployeeDao dao = (EmployeeDao) sqlSession.getMapper(EmployeeDao.class);
		int result = dao.pictureAdd(emp);
		return result;
	}

	@Override
	public int pictureModify(EmployeeVo emp) {
		EmployeeDao dao = (EmployeeDao) sqlSession.getMapper(EmployeeDao.class);
		int result = dao.pictureModify(emp);
		return result;
	}

}

