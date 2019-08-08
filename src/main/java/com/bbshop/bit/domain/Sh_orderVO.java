package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Sh_orderVO {
	
	private long order_num; // 주문 번호
	private long user_key; // 회원 식별자
	private Date order_date; // 주문 일자
	private int status; // 주문 상태 // 0. 결제완료, 1. 배송준비중, 2. 배송중, 3. 배송 완료 4. 주문 취소
	private String payment_method; // 결제 수단
	private long order_price; // 결제 금액
	private long savings; // 적립금
	private long ship_num; // 배송 번호
	private Date ship_date; // 배송 일자
	private String order_addr; // 주문 주소
	private String receiver; // 수취인
	private long phone1; // 연락처1
	private long phone2; // 연락처2
	private String order_msg; // 주문 메시지
	private String order_details; // 주문 내역
	private int cancel; // 주문 취소(0:취소 X, 1: 취소 O)

}
