package com.hh.hh.resign.dao;

import java.util.List;

import com.hh.hh.resign.controller.ResignHistoryVo;

public interface ResignDao {

	List<ResignHistoryVo> getHistoryMeber(ResignHistoryVo vo) throws Exception;

	int getNoticeCnt() throws Exception;

}
