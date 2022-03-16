package com.hh.hh.salary.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hh.hh.member.entity.MemberDto;
import com.hh.hh.salary.entity.InputDto;
import com.hh.hh.salary.entity.PayrollDto;
import com.hh.hh.salary.entity.SalaryDto;
import com.hh.hh.salary.entity.SearchVo;
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
	public List<SalaryDto> selectListS() {
		return dao.selectListS();
	}
	
	@Override
	public List<PayrollDto> selectListOne(long empNo) {
		return dao.selectListOne(empNo);
	}
	
	@Override
	public List<PayrollDto> selectListE() {
		return dao.selectListE();
	}

	@Override
	public int searchPayslip(PayrollDto dto) throws NullPointerException {
		return dao.searchPayslip(dto);
	}
	
	@Override
	public int enrollPayroll(InputDto dto) throws Exception {
		return dao.input(dto);
	}
	
	@Override
	public List<InputDto> selectEmpList() {
		return dao.selectEmpList();
	}
	
	@Override
	public List<InputDto> selectPayrollList() {
		return dao.selectPayrollList();
	}

	@Override
	public int settingInput(InputDto dto) {
		return dao.settingInput(dto);
	}

	@Override
	public List<InputDto> searchEmpList(SearchVo vo) throws Exception {
		return dao.searchEmpList(vo);
	}

	@Override
	public List<PayrollDto> searchPayslipList(SearchVo vo) throws Exception {
		//2022-03 -> 22/03
		String month = vo.getMonth();
		month = month.substring(2); //2022-03 -> 22-03
		month = month.replace('-', '/'); //22-03 -> 22/03
		System.out.println("month :::" + month);
		vo.setMonth(month);
		return dao.searchPayslipList(vo);
	}


}
