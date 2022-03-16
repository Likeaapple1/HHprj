package com.hh.hh.resign.service;

import java.util.List;

import com.hh.hh.resign.entity.ResignDto;

public interface ResignService {

	
	
	List<ResignDto> getResignList() throws Exception;

	List<ResignDto> getTotalResignList() throws Exception;
	
	

}
