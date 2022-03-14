package com.hh.hh.empinfo.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hh.hh.empinfo.entity.EmpinfoDto;

public interface EmpinfoDao {

	int join(EmpinfoDto empinfodto, HttpServletRequest req)throws Exception;
	
	List<EmpinfoDto> getInfoList()throws Exception;

}
