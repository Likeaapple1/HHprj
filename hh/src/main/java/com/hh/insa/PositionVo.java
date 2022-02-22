package com.hh.insa;

public class PositionVo {

	private String positionId, positionName, minBasicPay;
	public String getMinBasicPay() {
		return minBasicPay;
	}

	public void setMinBasicPay(String minBasicPay) {
		this.minBasicPay = minBasicPay;
	}

	private int delCheck;

	public String getPositionId() {
		return positionId;
	}

	public void setPositionId(String positionId) {
		this.positionId = positionId;
	}

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	public int getDelCheck() {
		return delCheck;
	}

	public void setDelCheck(int delCheck) {
		this.delCheck = delCheck;
	}

}
