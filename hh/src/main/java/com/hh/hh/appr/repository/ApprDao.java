package com.hh.hh.appr.repository;

import java.util.List;

import com.hh.hh.appr.entity.ApprDto;
import com.hh.hh.appr.entity.ApprLineDto;
import com.hh.hh.appr.entity.ApprovalDto;

public interface ApprDao {

	List<ApprDto> getOrgList() throws Exception;
	List<ApprLineDto> getLineList(ApprLineDto linedto) throws Exception;
	List<ApprovalDto> getRecList(ApprovalDto appr) throws Exception;

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
	
	ApprDto getUser1(ApprDto dto) throws Exception;
	ApprDto getUser2(ApprDto dto) throws Exception;
	ApprDto getUser3(ApprDto dto) throws Exception;
	ApprDto getUser4(ApprDto dto) throws Exception;
	ApprDto getViewer1(ApprDto dto) throws Exception;
	ApprDto getViewer2(ApprDto dto) throws Exception;
	ApprDto getViewer3(ApprDto dto) throws Exception;
	ApprDto getViewer4(ApprDto dto) throws Exception;
	
	int insertApproval(ApprovalDto apprdto) throws Exception;
	
	ApprovalDto getApproval(String p) throws Exception;
	
	ApprDto getEmp(ApprDto dto) throws Exception;
	

}
