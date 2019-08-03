package com.bbshop.bit.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class PagingVO {
	
	private int pageNum;
	private int amount;
	// 검색 조건 처리를 위해 PagingVO 필드 추가.
	private String type;
	private String keyword;
	
	public PagingVO() {
		this(1, 8);
	}
	
	public PagingVO(int pageNum, int amount) {
		
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getTypeArr() {
		
		return type == null ? new String[] {} : type.split("");
	}

}
