package com.hh.hh.notice.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hh.hh.notice.entity.NoticeDto;
import com.hh.hh.notice.entity.PageVo;
import com.hh.hh.notice.entity.SearchVo;
import com.hh.hh.notice.service.NoticeService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/notice")
@Slf4j
public class NoticeController {
	
	@Autowired
	private SqlSession ss;
	
	@Autowired
	private NoticeService service;
	
	//게시글 작성 페이지 보여주기
	@GetMapping("/insert")
	public String insert() {
		return "notice/insert";
	}
	
	//게시글 작성 로직 처리
	@PostMapping("/insert")
	public String insert(NoticeDto dto) {
		
		int result = 0;
		try {
			result = service.enrollNotice(dto);
		}catch(Exception e) {
			return "notice/error";
		}
		
		if(result > 0) {
			return "redirect:/notice/list"; 
		}else {
			return "notice/error";
		}
	}
	
	
	
	
	
	@GetMapping(value = {"/list/{page}", "/list"})
	public String list(Model model, @PathVariable(required = false) String page) throws Exception {
		if(page == null) {
			return "redirect:list/1";
		}
		
		int cntPerPage = 10;
		int pageBtnCnt = 5;
		int totalRow = service.getNoticeCnt();
		PageVo vo = new PageVo(page, cntPerPage, pageBtnCnt, totalRow);
		
		List<NoticeDto> list = service.getNoticeList(vo);
		model.addAttribute("list", list);
		model.addAttribute("page", vo);
		return "notice/list";
	}
	
	@PostMapping("/list/search")
	public String search(SearchVo vo, Model model) throws Exception {
		
		List<NoticeDto> list = service.searchNoticeList(vo);
		
		// model
		model.addAttribute("list", list);
		
		return "notice/list";
	}
	
	
	
	
	//상세 페이지 조회
	@GetMapping("/detail/{t}")
	public String detail(@PathVariable String t, Model model) {
		
		System.out.println(t);
		
		NoticeDto dto = ss.selectOne("notice.selectOneByNo", t);
		
		model.addAttribute("data", dto);
		return "notice/detail";
	}
	
	// 수정페이지
	@PostMapping("/detail2/{t}")
	public String detail2(@PathVariable String t, Model model) {

		NoticeDto dto = ss.selectOne("notice.selectOneByNo", t);
		
		model.addAttribute("data", dto);

		return "notice/detail2";
	}

	//상세페이지 수정
	@PostMapping("edit")
	public String edit(NoticeDto dto) {
		// dto로 처리
		int result = service.edit(dto);
		
		if(result > 0) {
			//success
			return "redirect:/notice/list";
		}else {
			//fail
			return "notice/error";
		}
	}
	
	//상세페이지에서 삭제
	@PostMapping("/delete")
	public String delete(NoticeDto dto) {

		int result = service.delete(dto);
		
		if (result > 0) {
			//success
			return "redirect:/notice/list";
		}else {
			//fail
			return "notice/error";
		}
	}
	
	// 목록에서 체크박스로 삭제
	@PostMapping("deleteCheckbox")
	@ResponseBody
	public String deleteCheckbox(String noList) throws Exception {
		//noList == 13
		System.out.println("test ~");
		System.out.println(noList);
		
		int result = service.deleteCheckbox(noList);
		
		log.warn("건드린 row 개수 : {}" , result);
		if(result == noList.length()/2) {
			return "redirect:/notice/list";
		}else {
			return "notice/error";
		}
	}

}