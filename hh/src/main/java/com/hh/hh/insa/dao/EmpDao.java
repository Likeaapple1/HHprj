package com.hh.hh.insa.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hh.hh.insa.entity.EmpDto;

public interface EmpDao {

	int join(EmpDto empdto, HttpServletRequest req)throws Exception;

	List<EmpDto> getOrjList()throws Exception;

	int getEmpNo()throws Exception;

//	EmpDto viewEmp(String empNo);
	
}