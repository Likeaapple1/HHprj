package com.hh.hh.insa.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.insa.entity.EmpDto;

@Repository
public class EmpDaoImpl implements EmpDao{

	@Autowired
	private SqlSession ss;
	
	@Override
	public int join(EmpDto empdto, HttpServletRequest req) throws Exception {
		return ss.insert("emp.insertEmp", empdto);
	}

	@Override
	public List<EmpDto> getOrjList() throws Exception {
		return ss.selectList("emp.getEmp");
	}

//	@Override
//	public EmpDto viewEmp(String empNo) {
//		return ss.selectOne("emp.viewEmp", empNo);
//	}

	
}
