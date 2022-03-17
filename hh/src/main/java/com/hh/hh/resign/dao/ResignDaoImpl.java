package com.hh.hh.resign.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.resign.entity.ResignDto;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class ResignDaoImpl implements ResignDao {
	
	@Autowired
	private SqlSession ss;

	@Override
	public List<ResignDto> getResignList() {
		return ss.selectList("resign.getResignList");
	}

	@Override
	public List<ResignDto> getTotalResignList() {
		return ss.selectList("resign.getTotalResignList");
		
	}

}
