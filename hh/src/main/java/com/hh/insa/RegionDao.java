package com.hh.insa;

import java.util.*;

public interface RegionDao {
	// 지역 전체 출력
	public List<RegionVo> list();

	// 지역 추가
	public int add(RegionVo r);
	
	// 지역 삭제
	public int remove(RegionVo r);

	// 지역 수정
	public int modify(RegionVo r);
}

