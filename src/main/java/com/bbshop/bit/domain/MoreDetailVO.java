package com.bbshop.bit.domain;

public class MoreDetailVO {
	
	private long user_key;
	private String team;
	private String position;
	private String brand1;
	private String brand2;
	private String brand3;
	
	public long getUser_key() {
		return user_key;
	}
	public void setUser_key(long user_key) {
		this.user_key = user_key;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getBrand1() {
		return brand1;
	}
	public void setBrand1(String brand1) {
		this.brand1 = brand1;
	}
	public String getBrand2() {
		return brand2;
	}
	public void setBrand2(String brand2) {
		this.brand2 = brand2;
	}
	public String getBrand3() {
		return brand3;
	}
	public void setBrand3(String brand3) {
		this.brand3 = brand3;
	}
	
	@Override
	public String toString() {
		return "MoreDetailVo [user_key=" + user_key + ", team=" + team + ", position=" + position + ", brand1=" + brand1
				+ ", brand2=" + brand2 + ", brand3=" + brand3 + "]";
	}
	
}
