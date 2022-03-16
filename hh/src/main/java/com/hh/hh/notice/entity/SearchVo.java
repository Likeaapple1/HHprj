package com.hh.hh.notice.entity;

import java.sql.Date;

import lombok.Data;

@Data
public class SearchVo {
	
	private String searchType;
	private String searchValue;
	private Date month;

}
