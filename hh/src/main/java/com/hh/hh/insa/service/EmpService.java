package com.hh.hh.insa.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hh.hh.insa.entity.EmpDto;

public interface EmpService {

	int join(EmpDto empdto, HttpServletRequest req)throws Exception;

	List<EmpDto> getOrgList()throws Exception;

	
}
