package com.hh.hh.resign.dao;

import java.util.List;

import com.hh.hh.resign.entity.ResignDto;

public interface ResignDao {

	
	
	List<ResignDto> getResignList();

	List<ResignDto> getTotalResignList();
	

}
