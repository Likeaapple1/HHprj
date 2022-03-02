package com.hh.hh.salary.entity;

import java.util.Date;

import lombok.Data;

@Data
public class SalaryDto {

	private int empNo;
	private String basicSalary;
	private String regularHourlyWage;
	private String overtimeAllowance;
	private String holidayAllowance;
	private String longServiceDay;
	private String longServiceAllowance;
	private String positionAllowance;
	private String annualLeaveAllowance;
	private String qualificationAllowance;
	private String mealExpenses;
	private String transportationExpenses;
	private String bonus;
	private String specialAllowance;
	private String totalSalary;
	private String fourMajorInsurances;
	private String tax;
	private String netSalary;
	private String payrollBank;

}
