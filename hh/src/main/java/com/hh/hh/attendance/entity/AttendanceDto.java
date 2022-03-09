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
	
	@Override
	public String toString() {
		return "AttendanceDto [attNo=" + attNo + ", empNo=" + empNo + ", attDate=" + attDate + ", attStrDate="
				+ attStrDate + ", attEndDate=" + attEndDate + ", attWorkDate=" + attWorkDate + ", attLate=" + attLate
				+ ", attNsYn=" + attNsYn + ", attNsDate=" + attNsDate + ", holiCode=" + holiCode + ", hwYn=" + hwYn
				+ ", hwStrDate=" + hwStrDate + ", hwEndDate=" + hwEndDate + ", ovDate=" + ovDate + ", workForm="
				+ workForm + ", attNsStart=" + attNsStart + ", attNsStartEnd=" + attNsStartEnd + ", attNsStartEndfinal="
				+ attNsStartEndfinal + ", ovDateStrat=" + ovDateStrat + ", ovDateYn=" + ovDateYn + ", attNsEnd="
				+ attNsEnd + ", startDate=" + startDate + ", endDate=" + endDate + "]";
	}


}
