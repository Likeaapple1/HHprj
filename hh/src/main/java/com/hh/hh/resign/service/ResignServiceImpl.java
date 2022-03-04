
package com.hh.hh.resign.service;
 

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.hh.hh.resign.dao.ResignDao;
import com.hh.hh.resign.entity.ResignDto;

@Service
public class ResignServiceImpl implements ResignService {
	
	@Autowired
	private ResignDao dao;

	@Override
	public int getNoticeCnt() throws Exception  {
		return dao.getNoticeCnt();
	}

	@Override
	public List<ResignDto> getHistoryMeber(ResignDto vo) throws Exception {
		return dao.getHistoryMeber(vo);
	}

	@Override
	public List<ResignDto> getMemberVo() {
		return null;
	}


	
	

}


