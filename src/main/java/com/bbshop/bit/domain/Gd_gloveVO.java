package com.bbshop.bit.domain;

import lombok.Data;

@Data
public class Gd_gloveVO {
	
	private long GLOVE_NUM; // 글러브 번호
	private long GOODS_NUM; // 상품 번호
	private int HAND; // (0 좌, 0 우) 글러브 좌우
	private int TAMING; // 길들이기 (0 안함, 1 함)
	private String POSITION; // 글러브 포지션
	private long STOCK; // 글

}
