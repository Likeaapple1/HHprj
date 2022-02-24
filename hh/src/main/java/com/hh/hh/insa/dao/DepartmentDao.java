package com.hh.hh.insa.dao;

import java.util.*;

import com.hh.hh.insa.entity.DepartmentVo;

public interface DepartmentDao {
	
	//부서 전체 출력 메소드 
	public ArrayList<DepartmentVo> list();

	//부서 추가
	public int add(DepartmentVo d);
	
	//부서 삭제
	public int remove(DepartmentVo d);
	
	//부서 수정
	public int modify(DepartmentVo d);
}

