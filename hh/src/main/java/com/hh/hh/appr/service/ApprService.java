package com.hh.hh.appr.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hh.hh.appr.entity.ApprDto;
import com.hh.hh.appr.entity.ApprLineDto;
import com.hh.hh.appr.entity.ApprovalDto;

public interface ApprService {

	List<ApprDto> getOrgList() throws Exception;
	List<ApprLineDto> getLineList(ApprLineDto linedto) throws Exception;
	List<ApprovalDto> getRecList(ApprovalDto appr) throws Exception;

	ApprDto getPerson(ApprDto dto) throws Exception;
	ApprDto getPerson1(ApprDto dto) throws Exception;
	ApprDto getPerson2(ApprDto dto) throws Exception;
	ApprDto getPerson3(ApprDto dto) throws Exception;
	ApprDto getPerson4(ApprDto dto) throws Exception;
	ApprDto getPerson5(ApprDto dto) throws Exception;
	ApprDto getPerson6(ApprDto dto) throws Exception;
	ApprDto getPerson7(ApprDto dto) throws Exception;

	int insertLine(ApprLineDto linedto, HttpServletRequest request) throws Exception;
	int deleteLine(ApprLineDto linedto) throws Exception;
	
	ApprDto getUser1(ApprDto dto) throws Exception;
	ApprDto getUser2(ApprDto dto) throws Exception;
	ApprDto getUser3(ApprDto dto) throws Exception;
	ApprDto getUser4(ApprDto dto) throws Exception;
	ApprDto getViewer1(ApprDto dto) throws Exception;
	ApprDto getViewer2(ApprDto dto) throws Exception;
	ApprDto getViewer3(ApprDto dto) throws Exception;
	ApprDto getViewer4(ApprDto dto) throws Exception;
	
	int insertApproval(ApprovalDto apprdto, HttpServletRequest request) throws Exception;
	
	

}
