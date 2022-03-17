package com.hh.hh.attendance.entity;

import java.sql.Time;

import java.util.Date;

import lombok.Data;
@Data
public class AttendanceDto {
	private long attNo;
	private long empNo;
	private char attDate;
	private Date attStrDate;
	private Date attEndDate;
	private Date attWorkDate;
	private char attLate;
	private char attNsYn;
	private Time attNsDate;
	private String holiCode;
	private char hwYn;
	private Time hwStrDate;
	private Time hwEndDate;
	private Time ovDate;
	private String workForm;
	private Date attNsStart;
	private Date attNsStartEnd;
	private Date attNsStartEndfinal;
	private Date ovDateStrat;
	private char ovDateYn;
	private Date attNsEnd;
	private String startDate;
	private String endDate;
	private String toDay;
	private String day;
	private String start;
	private String end;
	private Date total;
	private String attContent;
	private String attContentYn;
	private String attContentReason;
	private Date attWorkingDate;
	private Date attHwEndDate;
	private String deptName;
	private String jobName;
	private String empName;
}
