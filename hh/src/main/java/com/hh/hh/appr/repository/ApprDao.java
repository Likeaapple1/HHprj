package com.hh.hh.appr.repository;

import java.util.List;

import com.hh.hh.appr.entity.ApprDto;
import com.hh.hh.appr.entity.ApprLineDto;

public interface ApprDao {

	List<ApprDto> getOrgList() throws Exception;
	List<ApprLineDto> getLineList(ApprLineDto linedto) throws Exception;

	ApprDto getPerson(ApprDto dto);
	ApprDto getPerson1(ApprDto dto);
	ApprDto getPerson2(ApprDto dto);
	ApprDto getPerson3(ApprDto dto);
	ApprDto getPerson4(ApprDto dto);
	ApprDto getPerson5(ApprDto dto);
	ApprDto getPerson6(ApprDto dto);
	ApprDto getPerson7(ApprDto dto);

	int insertLine(ApprLineDto linedto) throws Exception;
	int deleteLine(ApprLineDto linedto) throws Exception;

}
