package com.hh.hh.appr.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hh.hh.appr.entity.ApprDto;

public interface ApprService {

	List<ApprDto> getOrgList() throws Exception;

	ApprDto getPerson(ApprDto dto) throws Exception;
	ApprDto getPerson1(ApprDto dto) throws Exception;
	ApprDto getPerson2(ApprDto dto) throws Exception;
	ApprDto getPerson3(ApprDto dto) throws Exception;
	ApprDto getPerson4(ApprDto dto) throws Exception;
	ApprDto getPerson5(ApprDto dto) throws Exception;
	ApprDto getPerson6(ApprDto dto) throws Exception;
	ApprDto getPerson7(ApprDto dto) throws Exception;

}
