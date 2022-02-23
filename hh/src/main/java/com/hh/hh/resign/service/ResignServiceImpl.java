/*
 * package com.hh.hh.resign.service;
 

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hh.hh.resign.controller.ResignHistoryVo;
import com.hh.hh.resign.dao.ResignDao;

@Service
public class ResignServiceImpl implements ResignService {
	
	@Autowired
	private ResignDao dao;

	@Override
	public List<ResignHistoryVo> getHistoryMeber(ResignHistoryVo vo) throws Exception {
		return dao.getHistoryMeber(vo);
	}

	@Override
	public int getNoticeCnt() throws Exception  {
		return dao.getNoticeCnt();
	}

	
	

}

*/
