package com.hh.hh.empinfo.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.empinfo.entity.EmpinfoDto;

@Repository
public class EmpinfoDaoImpl implements EmpinfoDao{
	
	@Autowired
	private SqlSession ss;
	
	@Override
	public int join(EmpinfoDto empinfodto, HttpServletRequest req) throws Exception{
		return ss.insert("emp.Empinfo", empinfodto);
	}
	
	@Override
	public List<EmpinfoDto> getInfoList() throws Exception{
		return ss.selectList("injuk.getinjuk");
	}


}
