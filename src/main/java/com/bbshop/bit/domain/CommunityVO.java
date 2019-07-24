package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommunityVO {
	
	private Long board_num;	// 글 번호
	private String team_name; // 구단명(말머리에 들어갈 부분)
	private String title;	// 글 제목
	private String board_content;	// 글 내용
	private String uploadFile;	// 첨부파일
//	private String writer;	// 회원_회원식별자.닉네임으로 불러오면 될듯!
	private Long hit; // 글 조회수, default 0
	private Date regdate;	// 글 작성일, default sysdate
	private Date moddate;	// 글 수정일, default sysdate
	private Long previousPost;	// 이전글
	private Long nextPost;	// 다음글
	private Long reply_num;	// 댓글 개수
	private String uri;	// 글 uri(신고할 때 넘겨주기 위함)
	private Long report_num;	// 신고 횟수
	private String ip;	// ip 주소
	private Long user_key;	// 회원 식별자
	private Long seq;	// 글 묶음번호
	private Long lev;	// 답글 계층
	private Long dep;	// 답글 순서
}
