package com.hh.hh.insa.dao;

import java.util.*;

import com.hh.hh.insa.entity.EmployeeVo;

public interface EmployeeDao {
	// 직원 명단 전체 및 검색 출력용 메소드
	public List<EmployeeVo> employeeList(Map<String, String> map);

	// 직원 명단 전체 및 검색 출력용 메소드
	public int totalCount();

	// 직원 사진 정보 검색 출력용 메소드
	public List<EmployeeVo> pictureList(EmployeeVo emp);

	// 직원 정보 추가 메소드
	public int employeeAdd(EmployeeVo emp);

	// 직원 정보 삭제 메소드
	public int employeRemove(EmployeeVo emp);

	// 직원 정보 수정 메소드
	public int employeeModify(EmployeeVo emp);

	// 직원 사진 추가 메소드
	public int pictureAdd(EmployeeVo emp);

	// 직원 사진 수정 메소드
	public int pictureModify(EmployeeVo emp);
}
