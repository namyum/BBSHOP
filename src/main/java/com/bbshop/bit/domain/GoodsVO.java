package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class GoodsVO {
	
	private long goods_num;		// ��ǰ ��ȣ
	private int category;		// ī�װ� (1:�۷���, 2:��Ʈ, 3:������, 4:�߱�ȭ, 5:�߱���)
	private String name;		// ��ǰ��
	private long price;			// ����
	private String detail;
	private String brand;		// �귣�� (10��)
	private String main_img;	// ���� ����(goodsList)
	private String dtl_img1;	// �� ����1(goodsInfo - ��ǥ)
	private String dtl_img2;	// �� ����2(goodsInfo - �󼼼��� ���� ���)
	private int best;			// �α��ǰ (0:�Ϲ�, 1:�α��ǰ)
	private long discount;		// ������
	private long sales;			// �Ǹ� ����
	private Date regdate;		// �����
	
}
