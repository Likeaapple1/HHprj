package com.hh.hh.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hh.hh.notice.entity.NoticeDto;
import com.hh.hh.notice.repository.NoticeRepository;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeRepository dao;
	
	@Override
	public int enrollNotice(NoticeDto dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public List<NoticeDto> selectList() {
		return dao.selectList();
	}

	@Override
	public int edit(NoticeDto dto) {
		return dao.edit(dto);
	}

	@Override
	public int delete(NoticeDto dto) {
		return dao.delete(dto);
	}

}
