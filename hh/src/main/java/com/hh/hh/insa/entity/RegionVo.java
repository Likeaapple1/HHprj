package com.hh.hh.insa.entity;

public class RegionVo {

	private String regionId, regionName;
	private int delCheck; // 삭제 여부 확인용

	public String getRegionId() {
		return regionId;
	}

	public void setRegionId(String regionId) {
		this.regionId = regionId;
	}

	public String getRegionName() {
		return regionName;
	}

	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}

	public int getDelCheck() {
		return delCheck;
	}

	public void setDelCheck(int delCheck) {
		this.delCheck = delCheck;
	}
}
