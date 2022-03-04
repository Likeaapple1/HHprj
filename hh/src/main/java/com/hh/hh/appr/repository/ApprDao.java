package com.hh.hh.appr.repository;

import java.util.List;

import com.hh.hh.appr.entity.ApprDto;

public interface ApprDao {

	List<ApprDto> getOrgList() throws Exception;

}
