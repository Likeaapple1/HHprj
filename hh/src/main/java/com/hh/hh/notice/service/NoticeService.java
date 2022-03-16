package com.hh.hh.notice.service;

import java.util.List;

import com.hh.hh.notice.entity.NoticeDto;
import com.hh.hh.notice.entity.PageVo;
import com.hh.hh.notice.entity.SearchVo;

public interface NoticeService {
	int enrollNotice(NoticeDto dto) throws Exception;

	List<NoticeDto> selectList();

	int edit(NoticeDto dto);

	int delete(NoticeDto dto);
	
	int deleteCheckbox(String noList) throws Exception;
	
	List<NoticeDto> getNoticeList(PageVo vo) throws Exception;
	
	int getNoticeCnt() throws Exception;
	
	List<NoticeDto> searchNoticeList(SearchVo vo) throws Exception;
	
}
