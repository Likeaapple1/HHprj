<%-- <%@page import="com.hh.hh.salary.entity.SalaryDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>급여관리</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
	
	<!--  -->
	<table border="1" class="table table-striped">
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
				</tr>
			<%
			}
			%>
		</tbody>
	</table>
	
</body>
</html> --%>