package com.hh.hh.annual.service;

import java.util.List;

import com.hh.hh.annual.entity.AnnualDto;

public interface AnnualService {

	List<AnnualDto> getHoliList(long empNo) throws Exception;

}
