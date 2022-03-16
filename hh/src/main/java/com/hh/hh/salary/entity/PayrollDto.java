package com.hh.hh.salary.entity;

import java.sql.Date;

import lombok.Data;

@Data
public class PayrollDto {

	private int empNo;
	private int payrollNo;
	private String basicSalary;
	private String overtimeAllowance;
	private String holidayAllowance;
	private String longServiceAllowance;
	private String annualLeaveAllowance;
	private String mealExpenses;
	private String transportationExpenses;
	private String bonus;
	private String specialAllowance;
	private String totalSalary;
	private String employmentInsurance;
	private String healthInsurance;
	private String nationalPension;
	private String fourMajorInsurances;
	private String tax;
	private String localIncomeTax;
	private String netSalary;
	private String payrollBank;
	private String payrollAccount;
	private Date payrollDate;
	private String deptName;
	private String empName;
	private String empJobcode;
	private String ehntl; //공제총액
	private String jobName;
	private String empenrollDate;

}
