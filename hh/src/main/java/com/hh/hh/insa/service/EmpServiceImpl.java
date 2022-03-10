package com.hh.hh.insa.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hh.hh.insa.dao.EmpDao;
import com.hh.hh.insa.entity.EmpDto;

@Service
public class EmpServiceImpl implements EmpService{

	@Autowired
	private EmpDao dao;
	
	@Override
	public int join(EmpDto empdto, HttpServletRequest req) throws Exception {
		return dao.join(empdto , req);
	}

	@Override
	public List<EmpDto> getOrgList() throws Exception {
		return dao.getOrjList();
	}

	
	
}
