package com.bbshop.bit.domain;

import java.util.Date;

public class CommunityVO {
	
	private Long team_num;	// 글 번호
	private String team_name; // 구단명(말머리에 들어갈 부분)
	private String title;	// 글 제목
	private String contents;	// 글 내용
	private String team_file;	// 첨부파일
//	private String writer;	// 작성자 -> 회원 식별자를 불러오는데 필요한지?
	private Long hit; // 글 조회수
	private Date regdate;	// 글 작성일
	private Date moddate;	// 글 수정일
	private Long previousPost;	// 이전글
	private Long nextPost;	// 다음글
	private Long reply_num;	// 댓글 개수
	private Long uri;	// 글 uri(신고할 때 넘겨주기 위함)
	private Long report_num;	// 신고 횟수
	private String ip;	// ip 주소
	private Long user_key;	// 회원 식별자
	private Long seq;	// 글 묶음번호
	private Long lef;	// 답글 계층
	private Long dep;	// 답글 순서

}
