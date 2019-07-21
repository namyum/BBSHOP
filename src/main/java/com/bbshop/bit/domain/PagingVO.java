package com.bbshop.bit.domain;

public class PagingVO {
	
	private long pageNum;
	private long amount;
	
	public PagingVO() {
		this(1, 3);
	}

	public PagingVO(long pageNum, long amount) {

		this.pageNum = pageNum;
		this.amount = amount;
	}

	public long getPageNum() {
		return pageNum;
	}

	public void setPageNum(long pageNum) {
		this.pageNum = pageNum;
	}

	public long getAmount() {
		return amount;
	}

	public void setAmount(long amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "PagingVO [pageNum=" + pageNum + ", amount=" + amount + "]";
	}
}
