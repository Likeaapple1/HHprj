package com.hh.hh.insa.entity;

import org.springframework.web.multipart.MultipartFile;

public class EmployeeVo {
	private String employeeId, name, ssn, birthday, lunar, lunarName, telephone, departmentId, positionId, regionId,
	departmentName, positionName, regionName;
	private String employeePicFileName; // 사진 출력용 멤버
	private MultipartFile file;
	private int basicPay, extraPay, pay;
	private int grade; // 관리자(0), 일반 직원(1) 구분 멤버

	public String getEmployeeId() {
	return employeeId;
	}
	
	public void setEmployeeId(String employeeId) {
	this.employeeId = employeeId;
	}
	
	public String getName() {
	return name;
	}
	
	public void setName(String name) {
	this.name = name;
	}
	
	public String getSsn() {
	return ssn;
	}
	
	public void setSsn(String ssn) {
	this.ssn = ssn;
	}
	
	public String getBirthday() {
	return birthday;
	}
	
	public void setBirthday(String birthday) {
	this.birthday = birthday;
	}
	
	public String getLunar() {
	return lunar;
	}
	
	public void setLunar(String lunar) {
	this.lunar = lunar;
	}
	
	public String getLunarName() {
	return lunarName;
	}
	
	public void setLunarName(String lunarName) {
	this.lunarName = lunarName;
	}
	
	public String getTelephone() {
	return telephone;
	}
	
	public void setTelephone(String telephone) {
	this.telephone = telephone;
	}
	
	public String getDepartmentId() {
	return departmentId;
	}
	
	public void setDepartmentId(String departmentId) {
	this.departmentId = departmentId;
	}
	
	public String getPositionId() {
	return positionId;
	}
	
	public void setPositionId(String positionId) {
	this.positionId = positionId;
	}
	
	public String getRegionId() {
	return regionId;
	}
	
	public void setRegionId(String regionId) {
	this.regionId = regionId;
	}
	
	public String getDepartmentName() {
	return departmentName;
	}
	
	public void setDepartmentName(String departmentName) {
	this.departmentName = departmentName;
	}
	
	public String getPositionName() {
	return positionName;
	}
	
	public void setPositionName(String positionName) {
	this.positionName = positionName;
	}
	
	public String getRegionName() {
	return regionName;
	}
	
	public void setRegionName(String regionName) {
	this.regionName = regionName;
	}
	
	public String getEmployeePicFileName() {
	return employeePicFileName;
	}
	
	public void setEmployeePicFileName(String employeePicFileName) {
	this.employeePicFileName = employeePicFileName;
	}
	
	public int getBasicPay() {
	return basicPay;
	}
	
	public void setBasicPay(int basicPay) {
	this.basicPay = basicPay;
	}
	
	public int getExtraPay() {
	return extraPay;
	}
	
	public void setExtraPay(int extraPay) {
	this.extraPay = extraPay;
	}
	
	public int getPay() {
	return pay;
	}
	
	public void setPay(int pay) {
	this.pay = pay;
	}
	
	public int getGrade() {
	return grade;
	}
	
	public void setGrade(int grade) {
	this.grade = grade;
	}
	
	public MultipartFile getFile() {
	return file;
	}
	
	public void setFile(MultipartFile file) {
	this.file = file;
	}
	
}

