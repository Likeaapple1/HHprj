package com.hh.hh.annual.entity;

import java.util.Date;

import lombok.Data;

@Data
public class AnnualDto {
	private long annualNo;
	private long empNo;
	private int annualTotal;
	private String annualKinds;
	private int annualUsed;
	private int annualRemain;
	private String annualReason;
	private Date annualStart;
	private Date annualEnd;
	private Date annualDate;
	private String startDate;
	private String endDate;
}
