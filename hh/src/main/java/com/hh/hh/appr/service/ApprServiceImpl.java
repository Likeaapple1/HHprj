package com.hh.hh.appr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hh.hh.appr.entity.ApprDto;
import com.hh.hh.appr.repository.ApprDao;

@Service
public class ApprServiceImpl implements ApprService{
	
	@Autowired
	private ApprDao dao;
	
	@Override
	public List<ApprDto> getOrgList() throws Exception {
		return dao.getOrgList();
	}

}
