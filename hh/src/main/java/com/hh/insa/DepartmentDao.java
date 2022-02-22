package com.hh.insa;

import java.util.*;

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

