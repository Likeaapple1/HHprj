package com.hh.hh.salary.service;

import java.util.List;

import com.hh.hh.member.entity.MemberDto;
import com.hh.hh.salary.entity.InputDto;
import com.hh.hh.salary.entity.PayrollDto;
import com.hh.hh.salary.entity.SalaryDto;

public interface SalaryService {
	
	int enrollSalary(PayrollDto dto) throws Exception;

	List<PayrollDto> selectList();

	int setting(SalaryDto dto);

//	int delete(PayrollDto dto);
	
	List<SalaryDto> selectListS();

	List<PayrollDto> selectListOne(long empNo);
	
	List<PayrollDto> selectListE();

	int searchPayslip(PayrollDto dto) throws NullPointerException;
	
	int enrollPayroll(InputDto dto) throws Exception;
	
	List<InputDto> selectEmpList();
	
	List<InputDto> selectPayrollList();

}
