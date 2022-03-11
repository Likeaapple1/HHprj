package com.hh.hh.salary.entity;

import java.sql.Date;

import lombok.Data;

@Data
public class EmailDto {

	private int pen; //payroll 사번
	private String pbs; //기본급
	private String pts; //총급여
	private String pns; //실지급액
	private String ppb; //은행
	private String ppa; //계좌번호
	private Date ppd; //지급일
	private int een; //emp 사번
	private String eename; //성명
	private String eee; //이메일
	private String eej; //직급
	private String emd; //부서
	private String ehntl; //공제총액
	
}
