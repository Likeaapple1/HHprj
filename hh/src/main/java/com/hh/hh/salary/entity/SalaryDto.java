package com.hh.hh.salary.entity;

import lombok.Data;

@Data
public class SalaryDto {

	private int empNo;
	private int regularHourlyWage;
	private int longServiceDay;
	private int longServiceAllowance;
	private int mealExpenses;
	private int transportationExpenses;
	private String payrollBank;
	private String payrollAccount;

}
