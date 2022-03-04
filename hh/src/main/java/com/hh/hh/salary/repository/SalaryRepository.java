package com.hh.hh.salary.repository;

import java.util.List;

import com.hh.hh.salary.entity.PayrollDto;
import com.hh.hh.salary.entity.SalaryDto;

public interface SalaryRepository {
	
	int input(PayrollDto dto) throws Exception;

	List<PayrollDto> selectList();

	int setting(SalaryDto dto);

//	int delete(PayrollDto dto);

}