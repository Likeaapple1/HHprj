package com.hh.hh.insa.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.hh.hh.insa.dao.DepartmentDao;
import com.hh.hh.insa.dao.EmployeeDao;
import com.hh.hh.insa.dao.PositionDao;
import com.hh.hh.insa.dao.RegionDao;
import com.hh.hh.insa.entity.DepartmentVo;
import com.hh.hh.insa.entity.EmployeeVo;
import com.hh.hh.insa.entity.PositionVo;
import com.hh.hh.insa.entity.RegionVo;

import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;

/* @Controller 어노테이션은 현재 클래스를 SpringWebMVC가 관리하는 컨트롤러로 등록할 때 사용 */
@Controller
public class EmployeeController {

		@Autowired
		private EmployeeDao empDao;
		@Autowired
		private DepartmentDao deptDao;
		@Autowired
		private PositionDao posDao;
		@Autowired
		private RegionDao regDao;
		@Autowired
		ServletContext context;
		
		@RequestMapping(value = "/employeelist.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String employeelist(ModelMap model, String key, String value) {

			List<EmployeeVo> list = null;
			int totalcount = 0;
			int count = 0;

			// 검색 키가 없을 경우 전체검색
			if (key == null) {
				key = "0";
				value = "";
			}

			// 검색 키, 값 바인딩
			Map<String, String> map = new HashMap<String, String>();
			map.put("key", key);
			map.put("value", value);

			// 리스트 사이즈
			list = empDao.employeeList(map);
			count = list.size();

			// 총 갯수
			totalcount = empDao.totalCount();

			/* 서블릿 액션의 결과를 JSP 페이지(View)에 전달하는 경우 Model 객체를 사용한다. */
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("totalcount", totalcount);
			model.addAttribute("key", key);
			model.addAttribute("value", value);

			/* View 정보를 반환하는 부분 */
			return "employeelist"; // "/WEB-INF/views/employeelist.jsp"
		}

		@RequestMapping(value = "/ajaxpicture.it", method = RequestMethod.POST)
		public String ajaxpicture(EmployeeVo emp, HttpServletRequest request) {
			System.out.println(emp.getEmployeeId());
			request.setAttribute("result", empDao.pictureList(emp).get(0).getEmployeePicFileName());
			return "ajaxpicture";
		}

		@RequestMapping(value = "/employeepictureinsert.it", method = RequestMethod.POST)
		public String employeepictureinsert(EmployeeVo file, String picturekey, BindingResult result) throws IOException {
			System.out.println("employeepictureinsert 메소드 호출");
			if (result.hasErrors()) {
				System.out.println("validation errors");
				return "redirect:fileuploaderror.it";
			} else {
				// 업로드 된 파일에 대한 객체 정보
				MultipartFile multipartFile = file.getFile();

				// Create a folder temp under WebContent sub-folder.
				// ServletContext 객체를 이용한 경로명 확보 필수
				String uploadPath = context.getRealPath("") + "resources" + File.separator + "picture" + File.separator;
				System.out.println(uploadPath);

				// 파일 중복 검사 과정 추가 or 임의의 파일명 동적 생성 -> 사용자 직접 작성
				String newFileName = FileRenamePolicy.rename(multipartFile.getOriginalFilename());
				// 파일 타입 확인
				String contentType = multipartFile.getContentType();
				// 파일 사이즈 확인
				long fileSize = multipartFile.getSize();

				// 사진 -> image/jpeg, image/png
				if ((contentType.equals("image/jpeg") || contentType.equals("image/png")) && fileSize <= 1024 * 500) {
					// 정상실행

					FileCopyUtils.copy(multipartFile.getBytes(), new File(uploadPath + newFileName));
					if (picturekey.equals("0")) {
						// DB에 사진 정보 저장
						file.setEmployeePicFileName(newFileName);
						empDao.pictureAdd(file);
					} else {
						// 기존에 입력되어 있던 사진 파일명 불러오기
						String employeePicFileName = empDao.pictureList(file).get(0).getEmployeePicFileName();

						// 물리적으로 업로드된 파일에 대한 삭제 액션 추가
						String deleteFilename = uploadPath + employeePicFileName;
						java.io.File temp = new java.io.File(deleteFilename);
						temp.delete();

						// 사진 수정
						file.setEmployeePicFileName(newFileName);
						empDao.pictureModify(file);
						System.out.println("pictureModify 메소드 호출");
					}

					return "redirect:employeelist.it";// "WEB-INF/views/adminpicturelist.jsp"
				} else {
					return "redirect:fileuploaderror.it";
				}
			}
		}

		@RequestMapping(value = "/fileuploaderror.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String fileuploaderror() {
			return "fileuploaderror";
		}

		@RequestMapping(value = "/employeeinsertform.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String employeeinsertform(ModelMap model) {

			model.addAttribute("regionlist", regDao.list());
			model.addAttribute("departmentlist", deptDao.list());
			model.addAttribute("positionlist", posDao.list());

			return "employeeinsertform";
		}

		@RequestMapping(value = "/ajaxminbasicpay.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String ajaxminbasicpay(PositionVo p, HttpServletRequest request) {
			request.setAttribute("result", posDao.getMinBasicPay(p));
			return "ajaxminbasicpay";
		}

		@RequestMapping(value = "/employeeinsert.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String employeeinsert(EmployeeVo emp) {
			empDao.employeeAdd(emp);
			return "redirect:employeeinsertform.it";
		}

		@RequestMapping(value = "/employeeupdateform.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String employeeupdateform(String employeeId, ModelMap model) {
			Map<String, String> map = new HashMap<>();
			map.put("key", "1");
			map.put("value", employeeId);
			List<EmployeeVo> list = empDao.employeeList(map);
			System.out.println(list.size());

			model.addAttribute("emp", list.get(0));
			model.addAttribute("regionlist", regDao.list());
			model.addAttribute("departmentlist", deptDao.list());
			model.addAttribute("positionlist", posDao.list());
			return "employeeupdateform";
		}

		@RequestMapping(value = "/employeeupdate.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String employeeupdate(EmployeeVo emp) {
			empDao.employeeModify(emp);
			return "redirect:employeelist.it";
		}

		@RequestMapping(value = "/employeedelete.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String employeedelete(EmployeeVo emp) {
			empDao.employeRemove(emp);

			// 물리적으로 업로드된 파일에 대한 삭제 액션 추가
			String uploadPath = context.getRealPath("") + "resources" + File.separator + "picture" + File.separator;
			String deleteFilename = uploadPath + emp.getEmployeePicFileName();
			java.io.File temp = new java.io.File(deleteFilename);
			temp.delete();

			return "redirect:employeelist.it";
		}

		@RequestMapping(value = "/departmentlist.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String departmentlist(ModelMap model) {
			List<DepartmentVo> list = deptDao.list();
			model.addAttribute("list", list);
			return "departmentlist";
		}

		@RequestMapping(value = "/departmentinsert.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String departmentinsert(DepartmentVo d) {
			deptDao.add(d);
			return "redirect:departmentlist.it";
		}

		@RequestMapping(value = "/departmentupdate.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String departmentupdate(DepartmentVo d) {
			deptDao.modify(d);
			return "redirect:departmentlist.it";
		}

		@RequestMapping(value = "/departmentdelete.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String departmentdelete(DepartmentVo d) {
			deptDao.remove(d);
			return "redirect:departmentlist.it";
		}

		@RequestMapping(value = "/positionlist.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String positionlist(ModelMap model) {
			List<PositionVo> list = posDao.list();
			model.addAttribute("list", list);
			return "positionlist";
		}

		@RequestMapping(value = "/positioninsert.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String positioninsert(PositionVo p) {
			posDao.add(p);
			return "redirect:positionlist.it";
		}

		@RequestMapping(value = "/positionupdate.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String positionupdate(PositionVo p) {
			posDao.modify(p);
			return "redirect:positionlist.it";
		}

		@RequestMapping(value = "/positiondelete.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String positiondelete(PositionVo p) {
			posDao.remove(p);
			return "redirect:positionlist.it";
		}

		@RequestMapping(value = "/regionlist.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String regionlist(ModelMap model) {
			List<RegionVo> list = regDao.list();
			model.addAttribute("list", list);
			return "regionlist";
		}

		@RequestMapping(value = "/regioninsert.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String regioninsert(RegionVo r) {
			regDao.add(r);
			return "redirect:regionlist.it";
		}

		@RequestMapping(value = "/regionupdate.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String regionupdate(RegionVo r) {
			regDao.modify(r);
			return "redirect:regionlist.it";
		}

		@RequestMapping(value = "/regiondelete.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String regiondelete(RegionVo r) {
			regDao.remove(r);
			return "redirect:regionlist.it";
		}

		@RequestMapping(value = "/nemployeelist.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String nemployeelist(ModelMap model, String key, String value) {
			List<EmployeeVo> list = null;
			int totalcount = 0;
			int count = 0;

			// 검색 키가 없을 경우 전체검색
			if (key == null) {
				key = "0";
				value = "";
			}

			// 검색 키, 값 바인딩
			Map<String, String> map = new HashMap<String, String>();
			map.put("key", key);
			map.put("value", value);

			// 리스트 사이즈
			list = empDao.employeeList(map);
			count = list.size();

			// 총 갯수
			totalcount = empDao.totalCount();

			/* 서블릿 액션의 결과를 JSP 페이지(View)에 전달하는 경우 Model 객체를 사용한다. */
			model.addAttribute("list", list);
			model.addAttribute("count", count);
			model.addAttribute("totalcount", totalcount);
			model.addAttribute("key", key);
			model.addAttribute("value", value);
			return "nemployeelist";
		}
		
		@RequestMapping(value = "/loginform.it", method = { RequestMethod.GET, RequestMethod.POST })
		public String loginform() {

			return "loginform";
		}

//		// 로그인실패 페이지 요청
//		@RequestMapping(value = "/loginfail.it", method = RequestMethod.GET)
//		public String loginfail() {
//
//			/* View 정보를 반환하는 부분 */
//			return "loginfail"; // "/WEB-INF/views/loginfail.jsp"
//		}
//
//		// 로그아웃폼 페이지 요청
//		@RequestMapping(value = "/logoutform.it", method = RequestMethod.GET)
//		public String logoutform() {
//
//			/* View 정보를 반환하는 부분 */
//			return "logoutform"; // "/WEB-INF/views/logoutform.jsp"
//		}
//
//		// 계정별 로그인
//		@RequestMapping(value = "/loginsuccess.it", method = RequestMethod.GET)
//		public String loginresult(SecurityContextHolderAwareRequestWrapper request) {
//			// 수정 요청 데이터 수신 처리 -> 스프링이 자동 수신 (자료형 클래스 준비 or 멤버 변수 준비)
//			/*
//			 * boolean b = request.isUserInRole("ROLE_ADMIN"); boolean c =
//			 * request.isUserInRole("ROLE_USER");
//			 * System.out.println("ROLE_ADMIN="+b);
//			 * System.out.println("ROLE_USER="+c);
//			 */
//
//			/* View 정보를 반환하는 부분 */
//			/* 로그인한 계정의 Roll이 ROLE_ADMIN이면 employeelist.it로 이동 */
//			String result = "";
//			if (request.isUserInRole("ROLE_ADMIN")) {
//				result = "redirect:employeelist.it";
//			} else {
//				result = "redirect:nemployeelist.it";
//			}
//			return result;
		}
