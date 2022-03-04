
package com.hh.hh.resign.service;


import java.util.List;

import com.hh.hh.resign.entity.ResignDto;



public interface ResignService {


	List<ResignDto> getHistoryMeber(ResignDto vo) throws Exception;

	int getNoticeCnt() throws Exception;

	List<ResignDto> getMemberVo();

}

