package com.hh.hh.insa.entity;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class EmpDto {
	private long empNo;
	private String empName;
	private String empPassword;
	private String empBirth;
	private String empDeptname;
	private String empJobname;
	private String empPhone;
	private String empAdd;
	private String empDtAdd;
	private String empOfficePhone;
	private String empEmail;
	private String empEnrolldate;
	private String empResigndate;
	private String empMod;
	private String empPhotoRoute;
	private String empPhotoName;
	private char empResignyn;
    private char managerYn;
    private String managerDept;
    private MultipartFile profileFile;
}
