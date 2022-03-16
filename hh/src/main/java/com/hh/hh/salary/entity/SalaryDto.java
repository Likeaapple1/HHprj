package com.hh.hh.salary.entity;

import lombok.Data;

@Data
public class SalaryDto {

	private int empNo;
	private String regularHourlyWage;
	private int longServiceDay;
	private String longServiceAllowance;
	private String mealExpenses;
	private String transportationExpenses;
	private String payrollBank;
	private String payrollAccount;

}
