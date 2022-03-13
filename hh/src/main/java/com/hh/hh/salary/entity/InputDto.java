package com.hh.hh.salary.entity;

import java.sql.Date;

import lombok.Data;

@Data
public class InputDto {
	
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
	private int employmentInsurance; //고용보험
	private int healthInsurance; //건강보험
	private int nationalPension; //국민연금
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
	private int ehntl; //공제총액
	private int regularHourlyWageS;
	private int longServiceDayS;
	private int longServiceAllowanceS;
	private int mealExpensesS;
	private int transportationExpensesS;
	private String payrollBankS;
	private String payrollAccountS;
	private int basicSalaryS;
	private int overtimeAllowanceS;
	private int holidayAllowanceS;

}
