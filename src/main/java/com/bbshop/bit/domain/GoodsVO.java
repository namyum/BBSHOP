package com.bbshop.bit.domain;

import lombok.Data;

@Data
public class GoodsVO {
	
	private long goods_num;		// �긽�뭹 踰덊샇
	private int category;		// 移댄뀒怨좊━ (1:湲��윭釉�, 2:諛고듃, 3:�쑀�땲�뤌, 4:�빞援ы솕, 5:�빞援ш났)
	private String name;		// �긽�뭹紐�
	private long price;			// 媛�寃�
	private String detail;		// �긽�꽭 �꽕紐�((異붽�))
	private String brand;		// 釉뚮옖�뱶 (10媛�)
	private String main_img;	// 硫붿씤 �궗吏�(goodsList)
	private String dtl_img1;	// �긽�꽭 �궗吏�1(goodsInfo - ���몴)
	private String dtl_img2;	// �긽�꽭 �궗吏�2(goodsInfo - �긽�꽭�꽕紐� �궗吏� 湲닿굅)
	private int best;			// �씤湲곗긽�뭹 (0:�씪諛�, 1:�씤湲곗긽�뭹)
	private long discount;		// �븷�씤�쑉
	private long sales;			// �뙋留� �닔�웾
	private String regdate;		// �벑濡앹씪
	// private Date regdate;
	
	// stock, soldout 蹂��닔 �궘�젣!

}
