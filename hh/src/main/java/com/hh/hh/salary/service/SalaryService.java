package com.hh.hh.salary.service;

import java.util.List;

import com.hh.hh.salary.entity.PayrollDto;
import com.hh.hh.salary.entity.SalaryDto;

public interface SalaryService {
	
	int enrollSalary(PayrollDto dto) throws Exception;

	List<PayrollDto> selectList();

	int setting(SalaryDto dto);

//	int delete(PayrollDto dto);

}