package com.hh.hh.salary.entity;

import lombok.Data;

@Data
public class SalaryDto {

	private int empNo;
	private String regularHourlyWage;
	private String longServiceDay;
	private String longServiceAllowance;
//	private String positionAllowance;
	private String mealExpenses;
	private String transportationExpenses;
	private String payrollBank;
	private String payrollAccount;

}
