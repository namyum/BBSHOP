package com.bbshop.bit.member.domain;



public class MoreDetailsVO {

	private long USER_KEY;
	private String TEAM;
	private String POSITION;
	private int HAND;
	private String BRAND1;
	private String BRAND2;
	private String BRAND3;
	
	public long getUSER_KEY() {
		return USER_KEY;
	}
	public void setUSER_KEY(long uSER_KEY) {
		USER_KEY = uSER_KEY;
	}
	public String getTEAM() {
		return TEAM;
	}
	public void setTEAM(String tEAM) {
		TEAM = tEAM;
	}
	public String getPOSITION() {
		return POSITION;
	}
	public void setPOSITION(String pOSITION) {
		POSITION = pOSITION;
	}
	public int getHAND() {
		return HAND;
	}
	public void setHAND(int hAND) {
		HAND = hAND;
	}
	public String getBRAND1() {
		return BRAND1;
	}
	public void setBRAND1(String bRAND1) {
		BRAND1 = bRAND1;
	}
	public String getBRAND2() {
		return BRAND2;
	}
	public void setBRAND2(String bRAND2) {
		BRAND2 = bRAND2;
	}
	public String getBRAND3() {
		return BRAND3;
	}
	public void setBRAND3(String bRAND3) {
		BRAND2 = bRAND3;
	}
	
	@Override
	public String toString() {
		return "MoreDetailsVO [USER_KEY=" + USER_KEY + ", TEAM=" + TEAM + ", POSITION=" + POSITION + ", HAND=" + HAND
				+ ", BRAND1=" + BRAND1 + ", BRAND2=" + BRAND2 +",BRAND3="+BRAND3+ "]";
	}
}
