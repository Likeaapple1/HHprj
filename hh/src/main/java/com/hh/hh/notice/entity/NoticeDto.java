package com.hh.hh.notice.entity;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeDto {

	private int noticeNo;
	private String title;
	private String content;
	private String writer;
	private Date enrollDate;
	
}
