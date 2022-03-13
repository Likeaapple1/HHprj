package com.hh.hh.notice.repository;

import java.util.List;

import com.hh.hh.notice.entity.NoticeDto;
import com.hh.hh.notice.entity.PageVo;

public interface NoticeRepository {
	int insert(NoticeDto dto) throws Exception;

//	List<NoticeDto> selectList();

	int edit(NoticeDto dto);

	int delete(NoticeDto dto);
	
	int deleteCheckbox(String[] delArr) throws Exception;
	
	List<NoticeDto> getNoticeList(PageVo vo) throws Exception;
	
	int getNoticeCnt() throws Exception;
}

