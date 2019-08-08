package com.bbshop.bit.domain;

import lombok.Data;

@Data
public class Gd_gloveVO {
	
	private long glove_num; // 글러브 번호
	private long goods_num; // 상품 번호
	private int hand; // (0 좌, 0 우) 글러브 좌우
	private int taming; // 길들이기 (0 안함, 1 함)
	private String position; // 글러브 포지션
	private long stock; // 글

}
