<%@page import="com.hh.hh.salary.entity.PayrollDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>급여조회</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>

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
				<td>급여지급계좌</td>
				<td>급여지급일</td>
			</tr>	
		</thead>
		<tbody>
			<%
			List<PayrollDto> payrollList = (List)request.getAttribute("payrollList");
			for(PayrollDto p : payrollList){
			%>
				<tr>
					<td><%= p.getBasicSalary()%></td>
					<td><%= p.getRegularHourlyWage()%></td>
					<td><%= p.getOvertimeAllowance()%></td>
					<td><%= p.getHolidayAllowance()%></td>
					<td><%= p.getLongServiceAllowance()%></td>
					<td><%= p.getPositionAllowance()%></td>
					<td><%= p.getAnnualLeaveAllowance()%></td>
					<td><%= p.getQualificationAllowance()%></td>
					<td><%= p.getMealExpenses()%></td>
					<td><%= p.getTransportationExpenses()%></td>
					<td><%= p.getBonus()%></td>
					<td><%= p.getSpecialAllowance()%></td>
					<td><%= p.getTotalSalary()%></td>
					<td><%= p.getFourMajorInsurances()%></td>
					<td><%= p.getTax()%></td>
					<td><%= p.getNetSalary()%></td>
					<td><%= p.getPayrollAccount()%></td>
					<td><%= p.getPayrollDate()%></td>
				</tr>
			<%
			}
			%>
		</tbody>
	</table>

</body>
</html>