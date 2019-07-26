package com.bbshop.bit.domain;

public class PageDTO {
	
	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private PagingVO pagingVO;
	
	public PageDTO(PagingVO pagingVO, int total) {
		
		this.pagingVO = pagingVO;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(pagingVO.getPageNum() / 10.0)) * 10;
		this.startPage = this.endPage - 9;
		
		int realEnd = (int)(Math.ceil((total * 1.0) / pagingVO.getAmount()));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		
		this.next = this.endPage < realEnd;

	}

	//Getter
	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public boolean isNext() {
		return next;
	}

	public int getTotal() {
		return total;
	}

	public PagingVO getPagingVO() {
		return pagingVO;
	}

	//toString
	@Override
	public String toString() {
		return "PageDTO [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", total=" + total + ", pagingVO=" + pagingVO + "]";
	}

}
