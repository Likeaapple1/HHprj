package com.hh.hh.salary.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.member.entity.MemberDto;
import com.hh.hh.salary.entity.InputDto;
import com.hh.hh.salary.entity.PayrollDto;
import com.hh.hh.salary.entity.SalaryDto;
import com.hh.hh.salary.entity.SearchVo;

@Repository
public class SalaryRepositoryImpl implements SalaryRepository {

	@Autowired
	private SqlSession ss;

	@Override
	public int input(PayrollDto dto) throws Exception {
		int result = ss.insert("salary.input", dto);
		return result;
	}

	@Override
	public List<PayrollDto> selectList() {
		return ss.selectList("salary.selectAllPayroll");
	}

	@Override
	public int setting(SalaryDto dto) {
		return ss.update("salary.setting", dto);
	}

//	@Override
//	public int delete(PayrollDto dto) {
//		return ss.delete("salary.delete", dto);
//	}
	
	@Override
	public List<SalaryDto> selectListS() {
		return ss.selectList("salary.selectOneBySalary");
	}
	
	@Override
	public List<PayrollDto> selectListOne(long empNo) {
		return ss.selectList("salary.selectAllPayrollByEmpNo", empNo);
	}
	
	@Override
	public List<PayrollDto> selectListE() {
		return ss.selectList("salary.selectEmail");
	}

	@Override
	public int searchPayslip(PayrollDto dto) throws NullPointerException {
		return ss.selectOne("salary.searchPayslip", dto);
	}
	
	@Override
	public int input(InputDto dto) throws Exception {
		int result = ss.insert("salary.insertPayroll", dto);
		return result;
	}
	
	@Override
	public List<InputDto> selectEmpList() {
		return ss.selectList("salary.selectAllEmpPayroll");
	}
	
	@Override
	public List<InputDto> selectPayrollList() {
		return ss.selectList("salary.selectOneByEmpPayroll");
	}
	
	@Override
	public int settingInput(InputDto dto) {
		return ss.update("salary.settingInput", dto);
	}

	@Override
	public List<InputDto> searchEmpList(SearchVo vo) throws Exception {
		return ss.selectList("salary.searchEmpList", vo);
	}

	@Override
	public List<PayrollDto> searchPayslipList(SearchVo vo) throws Exception {
		return ss.selectList("salary.searchPayslipList", vo);
	}

}
