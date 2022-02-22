package com.hh.hh.resign.service;


import java.util.List;

import com.hh.hh.resign.controller.ResignHistoryVo;

public interface ResignService {


	List<ResignHistoryVo> getHistoryMeber(ResignHistoryVo vo) throws Exception;

	int getNoticeCnt() throws Exception;

}
