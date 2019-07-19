package com.bbshop.bit.domain;

public class PagingVO {
	
	private long pageNum;
	private long amount;
	
	public PagingVO() {
		this(1, 5);
	}

	public PagingVO(long pageNum, long amount) {

		this.pageNum = pageNum;
		this.amount = amount;
	}
}
