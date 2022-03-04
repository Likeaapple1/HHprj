package com.hh.hh.insa.entity;

import java.util.Date;

import lombok.Data;

@Data
public class InsaDto {
	private long empNo;
	private String empName;
	private String empPassword;
	private String empbirth;
	private String empemail;
	private String empaddress;
	private String empphone;
	private String empdeptNo;
	private String empjobCode;
	private Date enrollDate;
	private Date resignDate;
	private String empMemo;
	
	
}
