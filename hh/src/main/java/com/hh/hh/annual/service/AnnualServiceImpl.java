package com.hh.hh.annual.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hh.hh.annual.dao.AnnualDao;
import com.hh.hh.annual.entity.AnnualDto;

@Service
@Transactional
public class AnnualServiceImpl implements AnnualService{

	@Autowired
	private AnnualDao annualdao;
	
	@Override
	public List<AnnualDto> getHoliList(long empNo) throws Exception {
		return annualdao.getHoliList(empNo);
	}

}
