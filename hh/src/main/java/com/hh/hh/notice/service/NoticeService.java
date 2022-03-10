package com.hh.hh.notice.service;

import java.util.List;

import com.hh.hh.notice.entity.NoticeDto;

public interface NoticeService {
	int enrollNotice(NoticeDto dto) throws Exception;

	List<NoticeDto> selectList();

	int edit(NoticeDto dto);

	int delete(NoticeDto dto);
	
	int deleteCheckbox(String noList) throws Exception;
}
