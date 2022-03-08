package com.hh.hh.salary.entity;

import java.sql.Date;

import lombok.Data;

@Data
public class PayrollDto {

	private int empNo;
	private String basicSalary;
	private String overtimeAllowance;
	private String holidayAllowance;
	private String longServiceAllowance;
//	private String positionAllowance;
	private String annualLeaveAllowance;
	private String mealExpenses;
	private String transportationExpenses;
	private String bonus;
	private String specialAllowance;
	private String totalSalary;
	private String fourMajorInsurances;
	private String tax;
	private String netSalary;
	private String payrollBank;
	private String payrollAccount;
	private Date payrollDate;

}
