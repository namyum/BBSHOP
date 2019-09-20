package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {

	private long order_num;		// 주문 번호
	private String or_addr;		// 주문 주소
	private String pymntmthd;	// 결제 방법
	private long pymntamnt;		// 결제 금액
	private long phone1;		// 연락처1	
	private long phone2;		// 연락처2
	private long savings;		// 적립금
	private String or_msg;		// 주문 메세지
	private String or_date;		// 주문 일자(sysdate)
	private int stts; 			// 주문 상태(0:결제완료, 1:배송준비중, 2:배송중, 3:배송완료, 4:주문취소)
	private long ship_nmbr;		// 배송 번호
	private Date ship_date;		// 배송 일자
	private long user_key;		// 회원 식별자(FK)
	private String name; 		// 주문자
	private String items; 		// 추가: 주문내역
	private String receiver; 	// 추가: 수취인
	private String tid; 		// 추가: 19/08/17 카카오페이 결제시 필요
	
	public long getOrder_num() {
		return order_num;
	}
	public void setOrder_num(long order_num) {
		this.order_num = order_num;
	}
	public String getOr_addr() {
		return or_addr;
	}
	public void setOr_addr(String or_addr) {
		this.or_addr = or_addr;
	}
	public String getPymntmthd() {
		return pymntmthd;
	}
	public void setPymntmthd(String pymntmthd) {
		this.pymntmthd = pymntmthd;
	}
	public long getPymntamnt() {
		return pymntamnt;
	}
	public void setPymntamnt(long pymntamnt) {
		this.pymntamnt = pymntamnt;
	}
	public long getPhone1() {
		return phone1;
	}
	public void setPhone1(long phone) {
		this.phone1 = phone;
	}
	public long getPhone2() {
		return phone2;
	}
	public void setPhone2(long phone2) {
		this.phone2 = phone2;
	}
	public long getSavings() {
		return savings;
	}
	public void setSavings(long savings) {
		this.savings = savings;
	}
	public String getOr_msg() {
		return or_msg;
	}
	public void setOr_msg(String or_msg) {
		this.or_msg = or_msg;
	}
	public String getOr_date() {
		return or_date;
	}
	public void setOr_date(String or_date) {
		this.or_date = or_date;
	}
	public int getStts() {
		return stts;
	}
	public void setStts(int stts) {
		this.stts = stts;
	}
	public long getShip_nmbr() {
		return ship_nmbr;
	}
	public void setShip_nmbr(long ship_nmbr) {
		this.ship_nmbr = ship_nmbr;
	}
	public Date getShip_date() {
		return ship_date;
	}
	public void setShip_date(Date ship_date) {
		this.ship_date = ship_date;
	}
	public long getUser_key() {
		return user_key;
	}
	public void setUser_key(long user_key) {
		this.user_key = user_key;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getItems() {
		return items;
	}
	public void setItems(String items) {
		this.items = items;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	
	@Override
	public String toString() {
		return "OrderVO [order_num=" + order_num + ", or_addr=" + or_addr + ", pymntmthd=" + pymntmthd + ", pymntamnt="
				+ pymntamnt + ", phone=" + phone1 + ", phone2=" + phone2 + ", savings=" + savings + ", or_msg=" + or_msg
				+ ", or_date=" + or_date + ", stts=" + stts + ", ship_nmbr=" + ship_nmbr + ", ship_date=" + ship_date
				+ ", user_key=" + user_key + ", name=" + name + ", items=" + items + ", receiver=" + receiver + "]";
	}
}
