package com.hh.hh.attendanceentity;

import java.sql.Time;
import java.util.Date;

import lombok.Data;

@Data
public class AttendanceDto {
	private long attNo;
	private long empNo;
	private Date attDate;
	private Date attStrDatE;
	private Date attEndDate;
	private char attLate;
	private char attNsYn;
	private Time attNsDate;
	private String holiCode;
	private char hwYn;
	private Time hwStrDate;
	private Time hwEndDate;
	private Time ovDate;
}
