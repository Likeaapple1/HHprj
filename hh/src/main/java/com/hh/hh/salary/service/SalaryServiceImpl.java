package com.hh.hh.salary.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hh.hh.member.entity.MemberDto;
import com.hh.hh.salary.entity.PayrollDto;
import com.hh.hh.salary.entity.SalaryDto;
import com.hh.hh.salary.repository.SalaryRepository;

@Service
public class SalaryServiceImpl implements SalaryService {

	@Autowired
	private SalaryRepository dao;
	
	@Override
	public int enrollSalary(PayrollDto dto) throws Exception {
		return dao.input(dto);
	}

	@Override
	public List<PayrollDto> selectList() {
		return dao.selectList();
	}

	@Override
	public int setting(SalaryDto dto) {
		return dao.setting(dto);
	}

//	@Override
//	public int delete(PayrollDto dto) {
//		return dao.delete(dto);
//	}
	
	@Override
	public List<MemberDto> selectListE() {
		return dao.selectListE();
	}

}
