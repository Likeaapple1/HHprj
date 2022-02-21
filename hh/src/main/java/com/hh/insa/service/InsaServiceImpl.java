package com.hh.insa.service; 

import java.util.List; 
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service;

import com.hh.insa.dao.InsaDao;
import com.hh.insa.entity.InsaVo; 

@Service //서비스 역할을 하는 클래스를 객체로 만들어둘때 사용 
public class InsaServiceImpl implements InsaService { 
	@Autowired private InsaDao dao; 
	
	@Override 
	public void employee_insert(InsaVo vo) { 
		dao.employee_insert(vo); 
	} 
	
	@Override public List<InsaVo> employee_list() { 
		return dao.employee_list(); 
	} 
	
	@Override 
	public InsaVo employee_detail(int id) { 
		return dao.employee_detail(id); 
	} 
	
	@Override 
	public void employee_update(InsaVo vo) { 
		dao.employee_update(vo); 
	} 
	
	@Override 
	public void employee_delete(int id) { 
		dao.employee_delete(id); 
	} 
}

