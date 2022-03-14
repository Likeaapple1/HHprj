package com.hh.hh.salary.repository;

import java.util.List;

import com.hh.hh.salary.entity.InputDto;
import com.hh.hh.salary.entity.PayrollDto;
import com.hh.hh.salary.entity.SalaryDto;
import com.hh.hh.salary.entity.searchVo;

public interface SalaryRepository {
	
	int input(PayrollDto dto) throws Exception;

	List<PayrollDto> selectList();
	
	int setting(SalaryDto dto);

//	int delete(PayrollDto dto);

	List<SalaryDto> selectListS();
	
	List<PayrollDto> selectListOne(long empNo);
	
	List<PayrollDto> selectListE();
	
	int searchPayslip(PayrollDto dto) throws NullPointerException;
	
	int input(InputDto dto) throws Exception;
	
	List<InputDto> selectEmpList();
	
	List<InputDto> selectPayrollList();
	
	int settingInput(InputDto dto);

	List<InputDto> searchEmpList(searchVo vo) throws Exception;
	
}
