<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/mypage_header.jsp"%>
<div class="container">

	<div class="section-top-border">
		<h3 class="mb-30 title_color">회원 탈퇴 신청</h3>
		<div class="row">
			<div class="col-lg-12">
				<blockquote class="generic-blockquote">저희 쇼핑몰의 부족했던 점과
					아쉬웠던 점을 적어주시면 감사하겠습니다. 더 좋은 모습으로 발전하도록 최선을 다하겠습니다. 그리하여 더 나은 모습으로
					고객님을 다시 만날 날을 기다리겠습니다. 그 동안 저희 쇼핑몰을 이용해주신 것을 진심으로 감사드립니다.</blockquote>
				<div class="mt-10">
					<textarea class="single-textarea" placeholder="남기시고 싶은 말씀을 적어주세요."
						onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'Message'" required></textarea>
				</div>
				<div class="text-center">
				<a href="/" class="genric-btn default radius" onclick="alert('탈퇴가 완료되었습니다.');" style="margin-right: 30px;"><span>탈퇴하기</span>
						</a>
				<a href="/modify_info" class="genric-btn default radius"><span>취소하기</span>
						</a>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/mypage_footer.jsp"%>