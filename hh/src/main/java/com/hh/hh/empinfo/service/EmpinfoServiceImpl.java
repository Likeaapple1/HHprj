package com.hh.hh.empinfo.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hh.hh.empinfo.dao.EmpinfoDao;
import com.hh.hh.empinfo.entity.EmpinfoDto;

@Service
public class EmpinfoServiceImpl implements EmpinfoService{

	@Autowired
	private EmpinfoDao dao;
	
	@Override
	public int join(EmpinfoDto empinfodto, HttpServletRequest req) throws Exception{
		return dao.join(empinfodto, req);
	}
	
	@Override
	public List<EmpinfoDto> getInfoList() throws Exception {
		return dao.getInfoList();
	}
}
