package com.hh.insa.controller;

import java.util.List; 
import javax.servlet.http.HttpSession; 
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller; 
import org.springframework.ui.Model; 
import org.springframework.web.bind.annotation.RequestMapping; 

import com.hh.insa.service.*; 
import com.hh.insa.entity.*;

@Controller 
public class InsaController { 
	@Autowired private InsaServiceImpl service; 
	//컨트롤러 - 서비스 - DAO - 맵퍼 순으로 연결된다. 
	
	//사원 관리 목록 화면 
	@RequestMapping("/list.cu") 
	public String list(HttpSession session, Model model) { 
		//서블릿에서는 request에서 getsession으로 세션을 가져왔다면, 
		//스프링에서는 바로 세션에 접근할 수 있게 HttpSession을 지원한다. 
		
		//category 어트리뷰트의 값에 따라 active 속성을 결정한다. 
		session.setAttribute("category", "emp"); //카테고리 어트리뷰트에 emp를 설정 
		List<InsaVo> list = service.employee_list(); 
		model.addAttribute("list", list); 
		return "employee/list"; 
		} 
	//사원 상세 화면 요청 
	@RequestMapping("/detail.emp") 
	public String detail(int id, Model model) { 
		//선택한 사원 정보를 DB에 조회해와서 
		InsaVo vo = service.employee_detail(id); 
		//화면에 출력할 수 있도록 Model에 담는다. 
		//원래는 string타입으로 담겨야하지만 스프링에서는 자동으로 형변환이 되서 int타입으로 담긴다. 
		model.addAttribute("vo", vo); 
		return "employee/detail"; 
		} 
	//신규 사원 등록 화면 요청 
	@RequestMapping("/new.emp") 
	public String employee() { 
		return "employee/new"; } 
	
	//신규 사원 등록 처리 요청 
	@RequestMapping("/insert.emp") 
	public String insert(InsaVo vo) { 
		//화면에서 입력한 정보를 DB에 저장한 후 
		service.employee_insert(vo); 
		
		//목록 화면으로 연결 
		return "redirect:list.emp"; 
	} 
	
	//사원 정보 수정 화면 요청 
	@RequestMapping("/modify.emp") 
	public String modify(int id, Model model) { 
		//선택한 사원의 정보를 DB에서 조회해온 후 
		//수정 화면에 출력할 수 있도록 Model에 담는다 
		model.addAttribute("vo", service.employee_detail(id)); 
		return "employee/modify"; 
		} 
	
	//사원 정보 수정 저장 처리 요청 
	@RequestMapping("/update.emp") 
	public String update(InsaVo vo) { 
		//화면에서 수정 입력한 정보를 DB에 저장한 후 
		service.employee_update(vo); 
		
		//화면으로 연결 
		return "redirect:detail.emp?id=" + vo.getId(); 
		} 
	
	//사원 정보 삭제 처리 요청 
	@RequestMapping("/delete.emp") 
	public String delete(int id) { 
		//선택한 사원 정보를 DB에서 삭제한 후 
		service.employee_delete(id); 
		//목록 화면으로 연결 
		return "redirect:list.emp"; 
		} 
	}


