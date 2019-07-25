package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommunityVO {
	
	private Long board_num;	// �� ��ȣ
	private String team_name; // ���ܸ�(���Ӹ��� �� �κ�)
	private String title;	// �� ����
	private String board_content;	// �� ����
	private String uploadFile;	// ÷������
//	private String writer;	// ȸ��_ȸ���ĺ���.�г������� �ҷ����� �ɵ�!
	private Long hit; // �� ��ȸ��, default 0
	private Date regdate;	// �� �ۼ���, default sysdate
	private Date moddate;	// �� ������, default sysdate
	private Long previousPost;	// ������
	private Long nextPost;	// ������
	private Long reply_num;	// ��� ����
	private String uri;	// �� uri(�Ű��� �� �Ѱ��ֱ� ����)
	private Long report_num;	// �Ű� Ƚ��
	private String ip;	// ip �ּ�
	private Long user_key;	// ȸ�� �ĺ���
	private Long seq;	// �� ������ȣ
	private Long lev;	// ��� ����
	private Long dep;	// ��� ����
	private int seq_board;
}
