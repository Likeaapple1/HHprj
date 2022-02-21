<%@page import="com.hh.salary.SalaryDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>급여관리</title>
</head>
<body>
	
	<table border="1">
		<thead>
			<tr>
				<td>기본급</td>
				<td>통상시급</td>
				<td>잔업수당</td>
				<td>특근수당</td>
				<td>근속수당</td>
				<td>직책수당</td>
				<td>연차수당</td>
				<td>자격수당</td>
				<td>보조비(중식비)</td>
				<td>보조비(교통비(유류비))</td>
				<td>기타수당(상여금)</td>
				<td>기타수당(특별수당)</td>
				<td>급여총액</td>
				<td>공제액(4대보험)</td>
				<td>공제액(소득세, 지방 소득세)</td>
				<td>실지급액</td>
				<td>급여지급계좌</td>
				<td>급여지급일</td>
			</tr>	
		</thead>
		<tbody>
			<%
			List<SalaryDto> salaryList = (List)request.getAttribute("salaryList");
			for(SalaryDto s : salaryList){
			%>
				<tr>
					<td><%= s.getBasicSalary()%></td>
					<td><%= s.getRegularHourlyWage()%></td>
					<td><%= s.getOvertimeAllowance()%></td>
					<td><%= s.getHolidayAllowance()%></td>
					<td><%= s.getLongServiceAllowance()%></td>
					<td><%= s.getPositionAllowance()%></td>
					<td><%= s.getAnnualLeaveAllowance()%></td>
					<td><%= s.getQualificationAllowance()%></td>
					<td><%= s.getMealExpenses()%></td>
					<td><%= s.getTransportationExpenses()%></td>
					<td><%= s.getBonus()%></td>
					<td><%= s.getSpecialAllowance()%></td>
					<td><%= s.getTotalSalary()%></td>
					<td><%= s.getFourMajorInsurances()%></td>
					<td><%= s.getTax()%></td>
					<td><%= s.getNetSalary()%></td>
					<td><%= s.getPayrollAccount()%></td>
					<td><%= s.getPayrollDate()%></td>
				</tr>
			<%
			}
			%>
		</tbody>
	</table>
	
	
</body>
</html>