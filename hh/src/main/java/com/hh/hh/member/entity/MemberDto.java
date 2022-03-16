package com.hh.hh.member.entity;

import lombok.Data;

@Data
public class MemberDto {
    private long empNo;
    private String empName;
    private String empPassword;
    private String empBirth;
    private String empDeptname;
    private String empJobname;
    private String empPhone;
    private String empAdd;
    private String empDtAdd;
    private String empOfficePhone;
    private String empEmail;
    private String empEnroldate;
    private String empResigndate;
    private String empMod;
    private String empPhotoRoute;
    private String empPhotoName;
    private char managerYn;
    private String managerDept;
}