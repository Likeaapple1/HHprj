package com.hh.hh.resign.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hh.hh.resign.dao.ResignDao;
import com.hh.hh.resign.dao.ResignDaoImpl;
import com.hh.hh.resign.entity.ResignDto;

import lombok.extern.slf4j.Slf4j;


@Service
@Slf4j
public class ResignServiceImpl implements ResignService {

	@Autowired
	private ResignDao dao;
	
	@Override
	public List<ResignDto> getResignList() throws Exception {
		return dao.getResignList();
	}

	@Override
	public List<ResignDto> getTotalResignList() throws Exception {
		return dao.getTotalResignList();
	}

}
