package com.hh.hh.annual.dao;

import java.util.List;

import com.hh.hh.annual.entity.AnnualDto;

public interface AnnualDao {

	List<AnnualDto> getHoliList(long empNo) throws Exception;

}
