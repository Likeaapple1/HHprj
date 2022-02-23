package com.hh.hh.insa.dao;

import java.util.*;

import com.hh.hh.insa.entity.PositionVo;

public interface PositionDao {
	//직위 리스트 출력
	public List<PositionVo> list();
	
	//직위 추가
	public int add(PositionVo p);
	
	//직위 삭제
	public int remove(PositionVo p);
	
	//직위 수정
	public int modify(PositionVo p);
	
	//최소 기본급 조회
	public int getMinBasicPay(PositionVo p);
}

