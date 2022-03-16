package com.hh.hh.salary.entity;

import java.sql.Date;

import lombok.Data;

@Data
public class SearchVo {
	
	private String searchType;
	private String searchValue;
	private String month;
	private int empNo;

}
