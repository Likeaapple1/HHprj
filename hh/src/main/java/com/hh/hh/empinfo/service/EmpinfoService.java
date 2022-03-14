package com.hh.hh.empinfo.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hh.hh.empinfo.entity.EmpinfoDto;

public interface EmpinfoService {

	int join(EmpinfoDto empinfodto, HttpServletRequest req)throws Exception;

	List<EmpinfoDto> getInfoList() throws Exception;

}
