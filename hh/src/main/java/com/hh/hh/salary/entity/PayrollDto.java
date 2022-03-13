package com.hh.hh.salary.entity;

import java.sql.Date;

import lombok.Data;

@Data
public class PayrollDto {

	private int empNo;
	private int payrollNo;
	private int basicSalary;
	private int overtimeAllowance;
	private int holidayAllowance;
	private int longServiceAllowance;
	private int annualLeaveAllowance;
	private int mealExpenses;
	private int transportationExpenses;
	private int bonus;
	private int specialAllowance;
	private int totalSalary;
	private int employmentInsurance;
	private int healthInsurance;
	private int nationalPension;
	private int fourMajorInsurances;
	private int tax;
	private int localIncomeTax;
	private int netSalary;
	private String payrollBank;
	private String payrollAccount;
	private Date payrollDate;
	private String deptName;
	private String empName;
	private String empJobcode;
	private Date month;
	private int ehntl; //공제총액

}
