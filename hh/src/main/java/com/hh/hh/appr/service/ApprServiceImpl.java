package com.hh.hh.appr.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hh.hh.appr.entity.ApprDto;
import com.hh.hh.appr.entity.ApprLineDto;
import com.hh.hh.appr.repository.ApprDao;

@Service
public class ApprServiceImpl implements ApprService{
	
	@Autowired
	private ApprDao dao;
	
	@Override
	public List<ApprDto> getOrgList() throws Exception {
		return dao.getOrgList();
	}
	
	@Override
	public ApprDto getPerson(ApprDto dto) throws Exception {
		return dao.getPerson(dto);
	}
	
	@Override
	public ApprDto getPerson1(ApprDto dto) throws Exception {
		return dao.getPerson1(dto);
	}

	@Override
	public ApprDto getPerson2(ApprDto dto) throws Exception {
		return dao.getPerson2(dto);
	}

	@Override
	public ApprDto getPerson3(ApprDto dto) throws Exception {
		return dao.getPerson3(dto);
	}

	@Override
	public ApprDto getPerson4(ApprDto dto) throws Exception {
		return dao.getPerson4(dto);
	}

	@Override
	public ApprDto getPerson5(ApprDto dto) throws Exception {
		return dao.getPerson5(dto);
	}

	@Override
	public ApprDto getPerson6(ApprDto dto) throws Exception {
		return dao.getPerson6(dto);
	}

	@Override
	public ApprDto getPerson7(ApprDto dto) throws Exception {
		return dao.getPerson7(dto);
	}

	@Override
	public int insertLine(ApprLineDto linedto, HttpServletRequest request) throws Exception {
		return dao.insertLine(linedto);
	}

	@Override
	public List<ApprLineDto> getLineList(ApprLineDto linedto) throws Exception {
		return dao.getLineList(linedto);
	}

	@Override
	public int deleteLine(ApprLineDto linedto) throws Exception {
		return dao.deleteLine(linedto);
	}

	

	

}
