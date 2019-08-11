package com.bbshop.bit.domain;

import lombok.Data;

@Data
public class PagingVO {
	
	private long pageNum;
	private long amount;
	private String type;
	private String keyword;
	
	public PagingVO() {
		this(1, 10);
	}
	
	public PagingVO(long pageNum, long amount) {
		
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
