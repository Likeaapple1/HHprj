package com.hh.hh.notice.repository;

import java.util.List;

import com.hh.hh.notice.entity.NoticeDto;

public interface NoticeRepository {
	int insert(NoticeDto dto) throws Exception;

	List<NoticeDto> selectList();

	int edit(NoticeDto dto);

	int delete(NoticeDto dto);
}

