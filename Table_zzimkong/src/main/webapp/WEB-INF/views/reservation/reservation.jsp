<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>예약</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/global.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/reservation.css">
<script src="${pageContext.request.contextPath }/resources/js/reservation.js"></script>

</head>
<body>
<!--  <header> -->
<%--  	<jsp:include page="../inc/top_ns.jsp"></jsp:include> --%>
<!--  </header> -->
 <form action="payment" name="reservation" onsubmit="return btnPay();">
<!-- 	<action="" name="reservation" onsubmit="return validateForm()"> -->
	<div class="out_block">
		<!-- 찜버튼 박스 -->
		<h1>예약</h1>
		<div class="block">
			<span>
				<button type="submit">10:00 분</button>
				10분간 예약 찜! 시간내 예약을 완료해 주세요.
			</span>
			<span>
				<ol class="status--2Vl8oROKh3">
					<li class="now--3JOiYDgRis">
						예약
						<span class="blind">현재 단계</span>
					</li>
					<li>
						<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg" class="ico_status--2cyINN3I2q">
							<path d="M5.834 14.572a.5.5 0 1 0 .707.707l-.707-.707zM11.813 9.3l.353.354a.5.5 0 0 0 0-.708l-.354.354zM6.54 3.321a.5.5 0 1 0-.707.708l.707-.708zm0 11.958l5.625-5.625-.707-.708-5.625 5.626.707.707zm5.625-6.333L6.541 3.321l-.707.708 5.625 5.625.707-.708z" fill="#000" fill-opacity="0.1"></path>
						</svg>
						주문/결제
					</li>
					<li>
						<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg" class="ico_status--2cyINN3I2q">
							<path d="M5.834 14.572a.5.5 0 1 0 .707.707l-.707-.707zM11.813 9.3l.353.354a.5.5 0 0 0 0-.708l-.354.354zM6.54 3.321a.5.5 0 1 0-.707.708l.707-.708zm0 11.958l5.625-5.625-.707-.708-5.625 5.626.707.707zm5.625-6.333L6.541 3.321l-.707.708 5.625 5.625.707-.708z" fill="#000" fill-opacity="0.1"></path>
						</svg>
						완료
					</li>
				<ol>
			</span>
		</div>
		<div class="inner_block">
			<!-- 예약정보 박스 -->
			<div class="section_box">
				<section class="sec01">
					<h2>예약 정보</h2>
					<div class="info_tag">
						<div class="info">
							<span class="info_title">식당이름</span>
							<span class="info_content">프륔</span>
						</div>
						<div class="info">
							<span class="info_title">예약 날짜</span>
							<span class="info_content">2023.12.31(일)</span>
						</div>
						<div class="info">
							<span class="info_title">예약 시간</span>
							<span class="info_content">18:00</span>
						</div>
						<div class="info">
							<span class="info_title">인원</span>
							<span class="info_content">2명</span>
						</div>
						<div class="info">
							<span class="info_title">예약 금액</span>
							<span class="info_content"><b>20,000</b>원</span>
						</div>
						<div class="info" id="menu_price">
							<span class="info_title">주문한 메뉴</span>
							<span class="info_content"><b>107,000</b>원</span>
						</div>
						<div class="info">
							<span class="info_title"> </span>
							<span class="info_content" id="menu_content">
								<div class="info_price">
									<span class="menu_name">시저샐러드</span>
									<span class="count">1개</span>
									<span class="price">18,000원</span>
								</div>
								<div class="info_price">
									<span class="menu_name">뇨끼파스타</span>
									<span class="count">1개</span>
									<span class="price">24,000원</span>
								</div>
								<div class="info_price">
									<span class="menu_name">안심스테이크</span>
									<span class="count">1개</span>
									<span class="price">55,000원</span>
								</div>
							</span>
						</div>
						<hr>
						<div class="info">
							<span class="info_title">총 결제금액</span>
							<span class="info_content"><b>127,000</b>원</span>
						</div>
					</div>
				</section>
			</div>
			<!-- 예약자 정보 박스 -->
			<div class="section_box">
				<section class="sec02">
					<h2>예약자 정보</h2>
					<div class="name_number">
						<div class="input_box">
							<h3>성명</h3>
		             		<input type="text" placeholder="성명을 입력해주세요." name="resName" class="name">
		            	</div>
			            <div class="input_box">
							<h3>연락처</h3>
			            	<input type="text" placeholder="휴대폰 번호를 입력해주세요." name="resNumber" class="number">
			            </div>
					</div>
				</section>
			</div>
			<!-- 방문자 정보 박스 -->
			<div class="section_box">
				<section class="sec03">
					<h2>방문자 정보</h2>
					<div class="sec03_info">
						<span>
							<input type="checkbox" id="checkbox_same_info"><span class="sec03_info_1">예약자 정보와 동일합니다.</span>
						</span>						
						<span class="sec03_info_2">
							* 예약자와 방문자가 다를 시 방문자 정보 입력
						</span>
					</div>
					<div class="name_number">
						<div class="input_box">
							<h3>성명</h3>
		             		<input type="text" placeholder="성명을 입력해주세요." name="name" class="name">
		            	</div>
			            <div class="input_box">
							<h3>연락처</h3>
			            	<input type="text" placeholder="휴대폰 번호를 입력해주세요." name="number" class="number">
			            </div>
					</div>
				</section>
			</div>
			<!-- 고객요청사항 -->
			<div class="section_box">
				<section class="sec04">
					<h2>고객 요청사항</h2>
					<textarea placeholder="요청하실 내용을 입력해주세요."></textarea>
					
				</section>
			</div>
			<!-- 예약금 및 환불 정책안내 박스 -->
			<div class="section_box">
				<section class="sec05">
					<h2>예약금 및 환불 정책안내</h2>
					<textarea readonly="readonly">
제 1 장 총칙
제 1 조 (목적)
이 약관은 주식회사 와드(이하 ”회사”)가 제공하는 테이블찜콩(table_zzimkong) 서비스(이하 "서비스")의 이용과 관련하여 "회사"와 "회원"(제2조에서 정의합니다) 간의 권리, 의무 및 책임사항, "회원"의 "서비스" 이용 절차에 관한 사항을 규정함을 목적으로 합니다. 이 약관은 "회사"가 제공하는 "서비스" 일체에 적용됩니다.

제 2 조 (용어의 정의)
본 약관에서 사용하는 용어의 정의는 다음과 같습니다.

1. "서비스"란 "회사"가 제공하는 레스토랑에 대한 예약∙대기신청∙정보제공∙추천∙티켓 구매∙주류구매(이에 한정되지 않음) 등을 위한 온라인 플랫폼 서비스를 의미합니다. 서비스는 구현되는 장치나 단말기(PC, TV, 휴대형 단말기 등의 각종 유무선 장치를 포함하며 이에 한정되지 않음)와 상관 없이 테이블찜콩(table_zzimkong) 및 테이블찜콩(table_zzimkong) 관련 웹(Web)∙앱(App) 등의 제반 서비스를 의미하며, 회사가 공개한 API를 이용하여 제3자가 개발 또는 구축한 프로그램이나 서비스를 통하여 회원에게 제공되는 경우를 포함합니다
2. "회원"이란 "서비스"에 접속하여 본 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 서비스를 이용하는 고객을 말하며, 회원계정(ID/PW)을 생성하지 않은 일반 고객(일명 비회원 고객)도 포함됩니다.
3. "판매자"이라 함은 "회사"가 제공하는 "서비스"를 이용하여 자신의 상품 등을 판매하는 자를 의미하며, 회사로부터 예약∙대기신청∙판매 대행, 광고 서비스 등을 제공받는 자를 말합니다
4. "게시물"이란 "회원"이 "서비스"를 이용함에 있어 "서비스" 상에 게시한 부호, 문자, 음성 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.
5. "가입신청인"이라 함은 이 약관에 의하여 "회원"이 되고자 하는 사람을 말합니다.
6. "포인트"란 "회원"이 "서비스"에 종속된 활동을 통해 적립 받은 것으로, 상품 등을 구매할 때나 "회사"가 제공하는 "서비스"를 이용할 때 현금처럼 사용할 수 있는 "서비스" 전용의 사이버 화폐를 말합니다.
7. 본 약관에서 사용하는 용어 중 본 조에서 정하지 아니한 사항은 관계 법령에서 정하는 바에 따르며, 그 외에는 일반 관례에 따릅니다.

제 3 조 (약관의 게시와 개정)
1. 본 약관은 "회원"이 서비스 가입 및 이용시 열람 할 수 있으며, "회사"는 본 약관의 내용을 "회원"이 쉽게 열람할 수 있도록 테이블찜콩(table_zzimkong) 서비스 홈페이지(이하 "홈페이지") 또는 연결화면을 통하여 게시합니다.
2. "회사"는 『약관의 규제에 관한 법률』, 『전자상거래 등에서의 소비자보호에 관한 법률(이하 “전자상거래법”)』, 『정보통신망 이용촉진 및 정보보호(이하 "정보통신망법")』, 『소비자기본법』, 『전자문서 및 전자거래 기본법』 등 관련법에 위배되지 않는 범위 내에서 본 약관을 개정할 수 있습니다.
3. "회사"는 "약관"을 개정할 경우 개정내용과 적용일자를 명시하여 제5조에 따른 방법으로 적용일자 7일 전부터 적용일자 전일까지 통지합니다. 다만, "이용자"에게 불리하게 개정되는 경우에는 적용일자 30일 전부터 적용일자까지 공지하고, "이용자"가 기재한 전자우편주소 또는 "테이블찜콩(table_zzimkong)" 로그인 시 노출되는 팝업 창 등의 전자적 수단을 통해 별도로 통지합니다.
4. "회사"가 전항에 따라 개정약관을 공지하면서 일정한 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 "회원"이 명시적으로 거부의 의사표시를 하지 아니한 경우 개정약관에 동의한 것으로 봅니다.
5. "회원"은 개정약관에 동의하지 않는 경우에는 개정 약관의 적용일 이전에 명시적인 거부 의사를 표시하고 이용계약을 해지할 수 있습니다.
6. "회원"은 약관 변경에 대하여 주의의무를 다하여야 하며, 개정 약관의 부지로 인한 "회원"의 피해는 "회사"가 책임지지 않습니다.

제 4 조 (개별 서비스에 대한 약관 및 약관의 해석 )
1. "회사"는 필요한 경우 특정 서비스에 관하여 적용될 사항(이하 "개별약관") 및 세부적인 내용(이하 "이용정책")을 정하여 운영할 수 있으며, 해당 내용은 홈페이지 등을 통해 공지합니다.
2. 특정 서비스에 대한 "개별약관"이 본 약관과 상충할 경우에는 "개별약관"이 우선하여 적용됩니다.
3. "회원"은 항상 개별약관이나 이용정책의 내용에 변경이 있는지를 주시하여야 하며, 변경사항의 공지가 있을 시에는 이를 확인하여야 합니다.
4. 본 약관 또는 개별약관에서 정하지 않은 사항은 『전기통신사업법』, 『전자문서 및 전자거래 기본법』, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』, 『전자상거래 등에서의 소비자보호에 관한 법률』, 『개인정보보호법』 등 관련 법의 규정 및 회사가 정한 서비스의 세부이용지침 등의 규정에 따릅니다. 또한 본 약관에서 정한 회사의 책임 제한 규정은 관련 법령이 허용하는 최대한도의 범위 내에서 적용됩니다.

제 5 조 (회원에 대한 통지)
1. "회사"가 "회원"에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 서면(전자문서 또는 전자우편을 포함)에 의하여 "회원"이 "회사"에 제공한 전자우편주소, 전화번호 등으로 할 수 있습니다.
2. "회사"는 "회원" 전체에 대하여 통지를 하는 경우 "테이블찜콩(table_zzimkong)" 초기화면 또는 게시판에 게시함으로써 전항의 통지에 갈음할 수 있습니다. 다만, "회원"의 "서비스" 이용에 중대한 영향을 주는 사항에 대해서는 전항의 통지 수단 중 2개 이상의 방법으로 통지합니다.
3. "회원"은 "회사"에 실제로 연락이 가능한 전자우편, (휴대)전화번호, 주소 등의 정보를 제공하고 해당 정보들을 최신으로 유지하여야 하며, "회사"의 통지를 확인하여야 합니다.

제 2 장 서비스 이용계약의 체결과 해지
제 6 조 (이용계약의 체결)
1. 이용계약은 "회원"이 되고자 하는 자(이하 "가입신청자")가 약관의 내용에 대하여 동의를 한 다음 "서비스" 이용 신청을 하고, "회사"가 이러한 신청에 대하여 승낙함으로써 체결됩니다. 다만, "가입신청자"(회원이 14세 미만의 아동인 경우 그 아동의 법정대리인)이 가입신청 당시 이 약관의 내용과 함께 제공한 동의 확인란에 동의를 표시한 경우, "회사"는 "가입신청자"가 이 약관의 내용을 모두 읽고 이를 충분히 이해하였으며, 이를 적용하는 것에 동의한 것으로 간주합니다.
2. "회사"는 "가입신청자"의 신청에 대하여 "서비스" 이용을 승낙함을 원칙으로 합니다. 다만, 회사는 다음 각 호에 해당하는 신청에 대하여는 승낙을 하지 않거나 사후에 이용계약을 해지할 수 있습니다.

1. 가입신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 단 "회사"의 회원 재가입 승낙을 얻은 경우에는 예외로 함
2. 이미 가입된 회원과 정보가 동일한 경우
3. 실명이 아니거나 타인의 명의를 도용 혹은 등록내용에 허위, 기재누락이 있는 경우
4. 허위의 정보를 기재하거나, 회사가 제시하는 내용을 기재하지 않은 경우.
5. 부정한 용도 및 영리 추구를 목적으로 서비스를 사용하고자 하는 경우.
6. 14세 미만 아동이 법정대리인(부모 등)의 동의 없이 신청하는 경우.
7. "회사"로부터 이용정지 및 제한을 당한 회원이 그 이용정지 기간 중에 이용계약을 임의 해지하고 재 신청을 하는 경우.
8. 회원 계약 해지 후 7일 이내에 같은 계정으로 가입한 경우(부정거래 이용방지 목적)
9. "가입신청자"의 귀책사유로 인하여 승인이 불가능하거나 기타 회사가 정한 제반 사항을 위반하여 신청하는 경우.
10. "회사"의 정책에 적합하지 않는 "회원"으로 판단되는 경우나 "서비스" 제공이 곤란한 경우, "회원"의 이용 목적이나 "서비스" 이용 방법이 "회사"의 재산권이나 영업권을 침해하거나 침해할 우려가 있는 경우
11. 관계법령에 위배되거나 사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청한 경우
12. 기타 "회사"가 합리적인 판단에 의하여 필요하다고 인정하는 경우.

3. 제1항에 따른 신청에 있어 "회사"는 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다.
4. 제 1항에 따른 신청에 있어 "회사"는 제공하는 "서비스"의 종류에 따라 필요한 경우 "가입신청자"에게 추가 정보를 요청할 수 있습니다.
5. "회사"는 "서비스" 관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다.
6. 본 조 제2항과 제4항에 따라 회원가입신청의 승낙을 하지 아니하거나 유보한 경우, "회사"는 원칙적으로 이를 "가입신청자"에게 알리도록 합니다.
7. 이용계약의 성립 시기는 "회사"가 가입완료를 신청절차 상에서 표시하거나 "회사"가 정하는 방법으로 "회사"가 "가입신청자"에게 가입완료 안내를 발송하여 도달한 시점으로 합니다.

제 7 조 (이용계약의 해지 및 이용제한)
1. "회원"은 언제든지 "회사"가 정한 절차에 따라 회원 탈퇴를 요청하여 이용계약 해지 신청을 할 수 있으며, "회사"는 관련법 등이 정하는 바에 따라 이를 즉시 처리합니다.
2. "회사" 또는 "회원"이 이용계약을 해지하는 경우, 관련법 및 개인정보취급방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고는 해지업무 처리 완료 즉시 회원의 데이터는 아래와 같은 절차와 방법에 따라 파기처리 됩니다.
- 파기절차 : "회사"는 파기 사유가 발생한 개인정보를 선정하고, 개인정보 보호책임자의 승인 후 개인정보를 파기합니다.
- 파기방법 : "회사"는 전자적 파일 형태로 처리된 정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 의하여 처리된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다
3. 회사는 아래 각 호의 사유가 발생하는 경우 회원의 "서비스" 이용을 중단하거나 경고, 일시 정지, 영구이용정지 등으로 "서비스"이용을 단계적으로 제한할 수 있습니다.

1. 부정하게 타인의 계정을 사용하여 "서비스"를 이용한 경우
2. "회원"이 "회사" 서비스의 운영을 고의 및 과실로 방해하는 경우
3. 제7조 제2항에 따른 승낙거부 사유가 있음이 확인된 경우.
4. "서비스"의 대금결제, 기타 "서비스"이용과 관련하여 회원이 부담하는 채무를 기일에 이행하지 않는 경우.
5. 타인의 "서비스" 이용을 방해하거나 정보를 도용하는 등 전자상거래질서를 위협하는 경우.
6. "회사"를 이용하여 법령과 이 약관이 금지하거나 공공질서, 미풍양속에 반하는 행위를 하는 경우.
7. 회원이 회사나 매장 또는 타 회원의 동의 없이 정당한 절차를 거치지 않고 부정적으로 "포인트"를 적립하거나 임의로 "포인트" 제반 관련 서비스를 사용한 경우.
8. 기타 "회사"가 "회원"의 이용정지를 진행할 합리적인 사유가 있는 경우.

4. "회사"는 제 3항과 제 4항에 따른 귀책사유로 "회원"의 "서비스" 이용을 중단 및 제한하는 경우 7영업일 이내로 이메일, 문자 또는 기타의 방법을 통하여 "서비스" 이용의 중단 및 제한 의사를 통지하며, 통지된 시점에 실행됩니다.
5. 이용계약이 종료되는 경우 환불 등의 처리는 "판매자"의 환불규정에 의합니다.
6. 이용계약의 종료와 관련하여 발생한 손해는 이용계약이 종료된 해당 "회원"이 책임을 부담하며, "회사"는 일체의 책임을 부담하지 않습니다.
7. "회사"는 "회원"이 계속해서 12개월 이상 로그인하지 않는 경우, 회원정보의 보호 및 운영의 효율성을 위해 이용을 정지할 수 있습니다.
8. "회원"이 계약을 해지하는 경우, 회원이 작성하였던 게시물 및 댓글 등은 삭제되지 않으며, 회원 탈퇴로 인하여 회원 정보가 삭제되어 작성자 본인을 확인할 수 없어 게시물 편집 및 삭제가 원천적으로 불가합니다. 회원이 작성한 게시물의 삭제를 원할 경우에는 회원 탈퇴 이전에 게시물을 모두 삭제해야 합니다.
9. "회원"은 본 조에 따른 이용제한 등에 대해 "회사"가 정한 절차에 따라 이의신청을 할 수 있으며, 이의가 정당하다고 "회사"가 인정하는 경우 "회사"는 즉시 "서비스"의 이용을 재개합니다.

제 3 장 서비스의 이용
제 8 조 ("서비스"의 내용 및 제공)
1. "회사"가 본 약관에 따라 "회원"에게 제공하는 "서비스"는 아래 각 호와 같습니다. 단, "회사"는 일부 "서비스"의 이용조건 및 이용범위 등을 별도로 정하여 운영할 수 있으며 해당 사항은 "회원"에게 공지합니다.
1) ‘판매자’의 레스토랑 정보 제공 서비스
2) ‘판매자’의 레스토랑 예약 서비스
3) ‘판매자’의 레스토랑 대기 서비스
4) ‘판매자’의 주류 구매 서비스
5) 기타 "회사"가 추가 개발하거나 다른 회사와의 제휴 계약 등을 통해 "회원"에게 제공하는 일체의 서비스

2. "회사"는 "서비스"를 연중무휴, 1일 24시간 제공함을 원칙으로 합니다.
3. "회사"는 "서비스"의 제공에 필요한 경우 정기점검 혹은 수시점검을 실시할 수 있으며, 점검시간은 공지한 바에 따릅니다. 정기점검시간은 사전에 공지하는 것을 원칙으로 하나 부득이 한 사유가 있는 경우 사후에 통지할 수 있습니다.
4. "서비스" 이용에 관한 안내사항, 예약 및 대기 시 유의사항, 변경, 취소 정책, 대금 결제 취소∙환불정책 등은 ‘판매자’가 예약, 대기에 관한 취소∙환불정책을 통해 별도로 제공하고 있으며, “회사”는 '판매자'의 정책에 대하여 어떠한 책임도 부담하지 않습니다.
5. "회원"은 "판매자"의 예약 및 대기, 주류 구매 서비스 등 정책을 충분히 숙지하고 "서비스"를 이용하여야 합니다. "회사"는 통신판매중개자로서 통신판매의 당사자가 아니고, "판매자"가 예약 및 대기, 주류 구매 서비스 등의 정책이나 취소∙환불 정책을 별도로 운영하므로, "회원"은 "서비스" 이용시 반드시 그 내용을 확인해야 합니다. "회원"이 이 내용을 제대로 숙지하지 못해 발생한 피해에 대해서는 "회사"가 책임을 부담하지 않습니다.

제 9 조 ("서비스"의 변경, 중지 및 종료)
1. "회사"는 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 "서비스"를 변경할 수 있습니다.
2. "회사"는 "서비스"의 변경 또는 서비스 중단이 예정된 경우 예정일로부터 30일 이상의 기간을 두고 회원이 충분히 인지할 수 있는 방법으로 회사 홈페이지(서비스 초기화면)에 변경 또는 중단될 서비스의 종류, 변경 또는 중단 내용과 사유, 변경 또는 중단 일시 등을 공지합니다.
3. "회사"는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정, 중단, 변경할 수 있으며, 이에 대하여 관련법에 대한 특별한 규정이 없는 한 "회원"에게 별도의 보상을 하지 않습니다.
4. "회사"는 다음 각 호에 해당하는 경우 "서비스"의 일부 또는 전부의 제공을 일시적으로 중단할 수 있습니다. 이 경우 회사는 "서비스" 이용의 중단 사실을 제5조의 방법에 따라 즉시 공지합니다. 다만, "회사"가 사전에 통지할 수 없는 부득이 한 사유가 있는 경우 사후에 통지할 수 있습니다.

1. 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 서버의 증설 및 교체, 운영자의 고의∙과실이 없는 장애 등의 부득이한 경우
2. 「전기통신사업법」에 규정된 기간통신사업자가 전기통신서비스를 중지하는 경우
3. 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 "서비스" 제공에 지장이 있는 경우
4. "판매자"가 "회사"가 제공하는 통상적인 수준의 트래픽, 용량 등을 과도하게 초과하여 "회사"의 정상적인 "서비스" 제공에 지장을 초래할 우려가 있는 경우

5. "회사"는 이용 감소로 인한 원활한 서비스 제공의 곤란 및 수익성 악화, 기술 진보에 따른 차세대 서비스로의 전환 필요성, 서비스 제공과 관련한 "회사" 정책의 변경 등 기타 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 서비스를 변경 또는 중단할 수 있습니다.
6. "회사"가 "서비스" 제공을 종료하고자 할 경우, 서비스를 종료하고자 하는 날로부터 1개월 이전에 본 약관 제5조에 규정된 통지방법을 준용하여 회원에게 알려드립니다.
7. "회사"는 본 조항에 따른 서비스의 변경, 중지 및 종료로 발생하는 문제에 대해서 어떠한 책임도 지지 않습니다.

제 10 조 (예약 서비스의 이용)
1. "예약 서비스"는 아래의 약관에 따라 운영됩니다.
1) "회원"이 "판매자"의 예약 정책에 따라 정보 입력 및 대금 결제
2) 대금 결제와 동시에 예약 확정됨
3) 대금 결제 유무는 "판매자"의 예약 정책에 따라 운영됨

2. 예약과 관련하여 "회원"이 입력한 정보에 문제가 있을 경우, 발생한 책임과 불이익은 전적으로 "회원"이 부담하여야 합니다.

제 11 조 (대기 서비스의 이용)
1. "대기 서비스"는 아래의 약관에 따라 운영됩니다.
1) “회사”는 “판매자”의 대기 가능한 시간을 “회원”에게 표시해주고, “회원”이 대기 신청을 요청할 때 “판매자”에 “회원”의 개인정보 및 대기 신청 정보를 전달하는 중개자 역할을 합니다.
2) 대기와 관련하여 “회원”이 입력한 정보에 문제가 있을 경우, 발생한 책임과 불이익은 전적으로 ”회원”이 부담하여야 합니다.

제 11조의 2 (주류 구매 서비스의 이용)
1. "주류 구매 서비스"는 아래의 약관에 따라 운영됩니다.
1) "회원"이 "판매자"의 주류 판매 정책에 따라 정보 입력 및 대금 결제
2) 대금 결제와 동시에 주류 구매가 확정됨

2. 주류 구매와 관련하여 "회원"이 입력한 정보에 문제가 있을 경우, 발생한 책임과 불이익은 전적으로 "회원"이 부담하여야 합니다.
3. “주류 구매 서비스”와 관련하여 “회사”는 통신판매중개자로서 통신판매의 당사자가 아니며, “회원”과 “판매자” 간의 자유로운 주류 거래를 위한 시스템을 제공할 뿐 “회원” 또는 “판매자”를 대리하지 않으며, “회원”과 “판매자” 사이에 성립된 거래와 관련된 책임과 “회원” 및 “판매자”가 제공한 정보에 대한 책임은 해당 “회원”과 “판매자”가 직접 부담합니다.
4. “판매자”는 “회사”에 통신판매의 중개를 의뢰하며, “회사”는 전자상거래법 제12조부터 제15조, 제17조 및 제18조에 따른 통신판매업자의 책임을 지지 않습니다.
5. “회원”은 “판매자”와 주류 매매 절차에서 분쟁이 발생하면 분쟁의 해결을 위하여 성실히 임해야 하며, 분쟁해결 과정에서 “회원”의 불성실 등 “회원”의 귀책사유로 “판매자”와 “회사”에 발생한 손해에 대하여는 “회원”이 책임을 부담합니다.
6. “회사”는 “회원”에게 “주류 구매 서비스”가 안전하게 제공될 수 있도록 각종 설비와 자료를 관리하고, 서비스가 제공 목적에 맞게 이용되고 있는지 여부를 확인합니다. 만약 “회원” 또는 “판매자”가 관련 법령 및 본 약관상 서비스 이용 목적을 위반한 것으로 확인되는 경우 “회사”는 그에 대한 소명을 “회원” 또는 “판매자”에게 요청할 수 있고, 주문 취소 등 필요한 조치를 할 수 있습니다.
7. “회원”은 “회사”가 “회원”의 서비스 이용 편의를 위하여 “판매자” 등으로부터 제공받은 주류 상품 관련 정보와 기타 콘텐츠를 테이블찜콩(table_zzimkong)을 통하여 제공하는 경우에도 주류의 구매 여부는 “회원” 본인의 판단과 책임으로 결정합니다.
8. “회원”의 주류 구매 서비스 이용 과정에서 발생하는 배송 관련 분쟁의 해결, 청약철회 등에 관한 정보에 관하여는 제7장의 주류 구매 서비스에 관한 특약에 의하는 것으로 하며, 그외 규정하지 아니한 내용에 대하여는 전자상거래법 등 관련 법령에 의합니다.

제 12 조 (구매계약의 성립)
1. "판매자"는 일부 예약에 한하여 "예약금" 제도를 운영할 수 있으며, 아래의 약관에 따라 운영됩니다.

1. "회원"이 ‘판매자’의 예약금 제도에 따라 "예약금" 결제
2. "예약금" 결제와 동시에 예약 확정됨

2. "판매자"는 일부 예약에 한하여 대금 결제 제도를 운영할 수 있습니다.
3. 환불 시에는 최소 3~10일이 소요되며, 결제수단에 따라 상이할 수 있습니다.
4. 환불 시에는 "예약금" 결제 시에 사용한 결제 수단을 통하여 환불됩니다.
5. 결제 후 예약 취소 및 노쇼 시 발생되는 수수료는 "판매자"의 취소 및 환불 제도를 따릅니다.
6. 결제와 관련하여 "회원"이 입력한 정보 및 그 정보와 관련하여 발생한 책임과 불이익은 전적으로 "회원"이 부담하여야 합니다.
7. 대금 결제 일체는 "판매자"의 운영 제도를 따르며, "회원"은 "서비스" 이용시 반드시 그 내용을 숙지해야 합니다. "회원"이 이 내용을 제대로 숙지하지 못해 발생한 피해에 대해서는 "회사"가 책임을 부담하지 않습니다.

제 13 조 (포인트)
1. "포인트"는 "회사"의 정책에 따라 "회원"에게 부여되며, 포인트 별 적립기준, 사용방법, 사용기한 및 제한에 관한 사항은 별도로 공지합니다. 단, 포인트 사용기한에 대해 별도로 안내하지 않은 경우에는 1년으로 봅니다.
2. "포인트"는 사용기한 동안 사용되지 않거나 회원 탈퇴 또는 자격상실 사유가 발생한 경우 자동으로 소멸됩니다. 회원 탈퇴 내지 자격상실로 포인트가 소멸된 경우 재가입하더라도 소멸된 포인트는 복구되지 않습니다.
3. "회원"은 "회사"가 별도로 명시한 경우를 제외하고는 포인트를 제3자에게 양도 할 수 없습니다. 만일 회원이 회사가 승인하지 않은 방법으로 포인트 획득/이용한 사실이 확인될 경우 회사는 포인트를 사용한 예약 신청을 취소하거나 회원 자격을 정지 또는 해지할 수 있습니다.
4. 포인트 관련 회사의 정책은 회사의 영업정책에 따라 변동될 수 있습니다. 회원에게 불리한 변경인 경우에는 제5조의 규정에 따라 통지하며 서비스 계속 이용 시 동의한 것으로 간주됩니다.
5. 서비스 종료 시 적립된 "포인트"는 회사가 별도 지정하는 날까지 회사가 지정하는 바에 따라 사용하여야 하며, 지정일 이후 미사용 잔여분은 소멸합니다.

제 14 조 (정보의 제공 및 광고의 게재)
1. "회사"는 "회원"이 "서비스" 이용 중 필요하다고 인정되는 다양한 정보를 공지사항이나 전자우편, SMS, 푸쉬 메시지 등의 방법으로 "회원"에게 제공할 수 있습니다. 다만, "회원"은 관련법에 따른 거래관련 정보 및 고객문의 등에 대한 답변을 제외하고는 언제든지 마케팅 수신 동의를 철회하실 수 있습니다.
2. "회사"는 "서비스"의 운영과 관련하여 서비스 화면, 홈페이지, 전자우편 등에 광고를 게재할 수 있습니다. 광고가 게재된 전자우편을 수신한 "회원"은 수신거절을 "회사"에게 할 수 있습니다.
3. "회원" 및 "비회원"은 회사가 제공하는 서비스와 관련하여 게시물 또는 기타 정보를 변경, 수정, 제한하는 등의 조치를 취하지 않습니다
4. "회사"는 "회원"이 레스토랑 예약 시 "판매자"와 예약고객 간의 소통을 원활하게 하기 위하여 고객이 예약하는 레스토랑에 이름 및 전화번호 등의 기본정보를 제공하며, 이는 추후 "판매자"에 의해 예약 관련 정보 또는 할인 프로모션 정보 등을 SMS로 발송하는데 사용될 수 있습니다.
5. "회사"는 "회원"의 게시물 내용, 검색 내용뿐만 아니라 언어, 쿠키 및 기기정보, IP 주소, 브라우저 유형, 운영체제 및 요청 일시와 같은 표준 로그 정보 등을 활용한 맞춤광고를 제공합니다. 이에 대한 자세한 사항은 "개인정보처리방침"을 참고하시기 바랍니다.
6. "회원"이 서비스상에 게재되어 있는 광고를 이용하거나 서비스를 통한 광고주의 판촉활동에 다른 상품 등을 이용하는 경우, 이는 전적으로 회원과 광고주 간의 법률 관계이므로, 그로 인해 발생한 회원과 광고주간 분쟁 등 제반 문제는 회원과 광고주간에 직접 해결하여야 하며, 이와 관련하여 회사는 어떠한 책임도 지지 않습니다.

제 15 조 (게시물의 저작권 및 배타적 이용허락)
1. "회원"이 작성한 게시물의 저작권은 이를 작성한 "회원" 본인에게 있으며, 해당 게시물이 타인의 저작권을 침해하는 경우 그에 대한 책임은 회원 본인이 부담합니다.
2. "회원"은 "회사"에게 자신이 작성한 게시물을 독점적으로 이용할 수 있는 권리를 부여합니다. 이에 따라 "회사"는 회원이 작성한 게시물을 검색노출, 판촉, 홍보 기타의 자료로 무상으로 영구적으로 이용할 수 있으며, 필요한 범위 내에서 게시물의 일부를 수정, 복제 및 편집할 수 있습니다.
2-2. 제2항의 이용에는 회원이 등록한 리뷰를 번역하고 그 번역물을 이용하는 것을 포함합니다.
3. "회사"는 "회원"이 등록한 게시물이 다음 각 호에 해당한다고 판단되는 경우 사전 통보 없이 해당 게시물을 삭제하거나 열람을 제한할 수 있으며, "회원"의 서비스 이용을 중지 또는 해지 할 수 있습니다.

1. 타인의 권리나 명예, 신용, 기타 정당한 이익을 침해하는 경우
2. 사회 공공질서나 미풍양속에 위배되는 경우
3. 범죄행위와 관련된 내용을 포함하는 경우
4. 허위 또는 과장 광고 내용을 포함하는 경우
5. 불법물, 음란물 또는 청소년유해매체물의 게시, 등록 또는 이와 관련된 물품의 홍보, 사이트를 링크하는 등의 경우
6. 정보통신기기의 오작동을 일으킬 수 있는 악성코드나 데이터를 포함하는 경우
7. 관련 법령에서 정하거나 정당한 권한을 가진 정부기관 등의 요청 등이 있는 경우
8. "회사"가 제공하는 "서비스"의 원활한 진행을 방해하는 것으로 판단되는 경우

4. "회사"는 "판매자"의 요청에 따라 "회원"이 등록한 리뷰를 "판매자"의 사이트 또는 서비스 내에 노출할 수 있도록 제공하거나 협조할 수 있습니다. 단, "회사"는 "판매자"가 자신의 사이트에서 리뷰를 운영하는 것에 관여하지 않으며, 이에 대하여 어떠한 책임도 부담하지 않습니다.
5. "회원"은 "회사"에게 언제든지 자신이 작성한 게시물에 대해 삭제, 검색결과 제외, 비공개를 요구할 수 있으며 마케팅, 판촉, 홍보 및 기타 자료로 사용되지 않을 것을 요청할 수 있습니다.

제 16 조 (저작권의 귀속)
1. "회사"가 작성한 저작물에 대한 저작권 및 기타 지적 재산권은 "회사"에 귀속됩니다.
2. "회원"은 "서비스"에 게재된 정보 중 "회사"에 지적 재산권이 귀속된 정보를 "회사"의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 및 기타 방법에 의하여 영리 또는 비영리 목적으로 이용하거나 제 3자에게 이용하게 하여서는 안됩니다.
3. "회원"은 본 이용약관으로 인하여 서비스를 소유하거나 서비스에 관한 저작권을 보유하게 되는 것이 아니라, 회사로부터 서비스의 이용을 허락 받게 되는바, 서비스는 정보취득 또는 개인용도로만 제공되는 형태로 회원이 이용할 수 있습니다.

제 4 장 권리와 의무
제 17 조 (회사의 의무)
1. "회사"는 관련 법령과 이 약관이 금지하거나 공공질서, 미풍양속에 반하는 행위를 하지 않으며, 이 약관이 정하는 바에 따라 지속적이고 안정적으로 "서비스"를 제공하기 위하여 최선을 다합니다.
2. "회사"는 "회원"이 안전하게 "서비스"를 이용할 수 있도록 "회원"의 개인정보(신용정보 포함) 보호를 위한 보안 시스템을 갖추어야 하며 개인정보취급방침을 공시하고 준수하며, "회원"의 개인정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않고, 이를 보호하기 위하여 노력합니다.
3. "회사"는 전자금융거래가 안전하게 처리될 수 있도록 선량한 관리자로서의 주의를 다하며, 전자금융거래의 안전성과 신뢰성을 확보할 수 있도록 전자금융거래의 종류별로 전자적 전송이나 처리를 위한 인력, 시설, 전자적 장치 등의 정보기술 부분 및 전자금융업무에 관하여 금융감독위원회가 정하는 기준을 준수합니다.
4. "회사"는 "서비스" 이용과 관련하여 발생하는 "회원"의 불만 및 피해구제요청을 적절하게 처리할 수 있도록 필요한 인력 및 시스템을 구비하며 "회사"는 "서비스" 이용과 관련하여 "회원"으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다. "회원"이 제기한 의견이나 불만사항에 대해서는 전자우편 등을 통하여 "회원"에게 처리과정 및 결과를 전달합니다.
5. "회사"는 "회원"으로부터의 거래지시가 있음에도 불구하고 천재지변, "회사"의 귀책사유가 없는 정전, 화재, 통신장애 기타의 불가항력의 사유로 처리 불가능하거나 지연된 경우에는 "회원"에 대하여 이로 인한 책임을 지지 아니합니다.
6. "회사"가 제공하는 "서비스"로 인하여 "회원"에게 손해가 발생한 경우 그러한 손해가 회사의 고의나 과실에 의해 발생한 경우에 한하여 회사에서 책임을 부담하며, 그 책임의 범위는 통상손해에 한합니다.

제 18 조 (회원의 의무)
1. "회원"은 기타 관계 법령, 본 약관의 규정, 이용안내 및 서비스상에 공지한 주의사항, "회사"가 통지하는 사항 등을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 아니 됩니다.
2. "회원"은 서비스의 이용권한, 기타 서비스 이용계약상의 지위를 타인에게 양도, 증여할 수 없으며 이를 담보로 제공할 수 없습니다.
3. "회원"은 서비스 이용과 관련하여 다음 각 호의 행위를 하여서는 안됩니다.

(1) 서비스 신청 또는 변경 시 허위내용을 등록하는 행위
(2) 다른 회원의 아이디 및 비밀번호를 도용하여 부당하게 서비스를 이용하거나, 정보를 도용하는 행위
(3) 타인의 계좌번호 및 신용카드번호 등 타인의 허락 없이 타인의 결제정보를 이용하여 회사의 예약 서비스를 이용하는 행위
(4) 정당한 사유 없이 당사의 영업을 방해하는 내용을 기재하는 행위
(5) 회사가 게시한 정보를 변경하는 행위
(6) 회사가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등을 송신 또는 게시하는 행위
(7) 회사와 기타 제3자의 저작권 등 지적재산권을 침해하는 행위
(8) 회사 및 기타 제3자의 명예를 손상시키거나 업무를 방해 혹은 손해를 끼치는 행위
(9) 외설 또는 폭력적인 메시지, 화상, 음성 기타 공공질서 미풍양속에 반하는 정보를 공개 또는 게시하는 행위
(10) 회사의 동의 없이 영리를 목적으로 서비스를 사용하는 행위
(11) 회사의 직원이나 서비스의 관리자를 가장하거나 사칭하여 또는 타인의 명의를 도용하여 글을 게시하거나 메일을 발송하는 행위
(12) 서비스와 관련된 설비의 오동작이나 정보 등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스, 기타 다른 컴퓨터 코드, 파일, 프로그램 자료를 등록 또는 유포하는 행위
(13) 회사가 제공하는 소프트웨어 등을 개작하거나 리버스 엔지니어링, 디컴파일, 디스어셈블 및 기타 일체의 가공행위를 통하여 서비스를 복제, 분해 또는 모방 기타 변형하는 행위
(14) 자동 접속 프로그램 등을 사용하는 등 정상적인 용법과 다른 방법으로 서비스를 이용하여 회사의 서버에 부하를 일으켜 회사의 정상적인 서비스를 방해하는 행위
(15) 다른 회원의 개인정보를 그 동의 없이 수집, 저장, 공개하는 행위
(16) 부정한 방법으로 "포인트"를 적립하거나 사용하는 행위
(17) "회사"의 동의 없이 "포인트"를 제3자에게 양도(판매)하는 등 부당한 영리를 목적으로 "서비스"를 사용하는 행위
(18) 본 약관을 위반하여 "판매자" 및 기타 제3자에게 손해를 끼치는 행위
(19) 기타 불법적이거나 회사에서 정한 규정을 위반하는 행위

4. "회사"는 "회원"이 제1항의 행위를 하는 경우 해당 게시물 등을 삭제 또는 임시 삭제할 수 있으며 서비스의 이용을 제한하거나 일방적으로 본 계약을 해지할 수 있습니다.
5. "회원"은 회원정보, 계정정보에 변경이 있는 경우 즉시 변경하여야 하며, 더불어 비밀번호를 철저히 관리하여야 합니다. 회원의 귀책으로 말미암은 관리소홀, 부정사용 등에 의하여 발생하는 모든 결과에 대한 책임은 회원 본인이 부담하며, 회사는 이에 대한 어떠한 책임도 부담하지 않습니다.
6. 민법상 미성년자인 회원이 대금결제 서비스를 이용할 경우 미성년자인 회원은 결제 전 법정대리인의 동의를 얻어야 하며, 만 14세 미만 아동의 경우 본 서비스를 이용할 수 없습니다.
7. "회원"은 "회사"에서 공식적으로 인정한 경우를 제외하고는 서비스를 이용하여 상품을 판매하는 영업 활동을 할 수 없으며, 특히 해킹, 광고를 통한 수익, 음란사이트를 통한 상업행위, 상용소프트웨어 불법배포 등을 할 수 없습니다. 이를 위반하여 발생한 영업 활동의 결과 및 손실, 관계기관에 의한 구속 등 법적 조치 등에 관해서는 회사가 책임을 지지 않으며, 회원은 이와 같은 행위와 관련하여 회사에 대하여 손해배상 의무를 집니다.

제 5 장 정보의 보호 및 위치정보
제 19 조 (개인정보보호)
1. "회사"는 "회원"이 안전하게 "서비스"를 이용할 수 있도록 "회원"의 개인정보보호를 위하여 개인정보보호정책을 실시하며 이에 따라 "회원"의 개인정보보호를 최대한 보호하기 위하여 노력합니다.
2. "회사"의 개인정보보호정책은 "회사"의 "홈페이지"를 통해 확인할 수 있습니다. 단, "회사"의 공식 홈페이지 이외의 링크된 사이트에서는 회사의 개인정보취급방침이 적용되지 않습니다. 링크된 사이트 및 서비스를 제공하는 제3자의 개인정보 처리에 대해서는 해당 사이트 및 제3자의 개인정보처리방침을 확인할 책임이 "회원"에게 있으며, "회사"는 이에 대하여 책임을 부담하지 않습니다.
3. "회원"이 "회사"에 제공한 개인정보는 서비스 이용의 혼선 방지, 불법적 사용자에 대한 수사기관 수사협조, 기타 안정적인 서비스 제공을 위해 회원탈퇴 후에도 일부 보유하게 됩니다.
4. "회사"는 "회사"가 "서비스"를 중단하거나 "회원"이 개인정보 제공 동의를 철회한 경우에는 신속하게 "회원"의 개인정보를 파기합니다. 단, 전자상거래법 등 관련 법률에서 정하는 바에 따라 일정 정보는 보관할 수 있습니다.
5. "회사"는 "회원"이 서비스 이용 과정에서 직접 제공한 정보 외에도 개인정보 보호 등 관련 법령에서 정한 절차에 따라 그 밖의 정보를 수집 및 이용 또는 제3자에게 제공할 수 있습니다. 이 경우 회사는 관련 법령에 따라 회원으로부터 필요한 동의를 받거나 관련 법령에서 정한 절차를 준수합니다.
6. 아이디, 비밀번호 등 계정정보의 관리책임은 "회원"에게 있으며, "회사"는 "회원"의 귀책사유로 인하여 노출된 "회원"의 개인정보에 대해서 일체의 책임을 지지 않습니다.
7. "회사"는 "회원"이 제공한 정보를 "회사"의 "서비스" 운영을 위한 목적 이외의 용도로 사용하거나 "회원"의 동의 없이 제3자에게 제공하지 않습니다. 단, 다음 각 호와 같은 경우에는 예외로 합니다.
- 배송업무 등 거래 이행에 필요한 최소한의 회원정보(이름, 주소, 연락처 등)가 배송업체에 제공되는 경우
- 이벤트에 참여한 "회원"의 최소한의 회원정보가 해당 이벤트의 주최자에게 제공되는 경우
- 예약시 "판매자"와 "회원"간의 효율적인 소통을 위하여 해당 "판매자"에게 "회원"의 최소한의 회원정보가 제공되는 경우
- 법령에 근거하여 회원정보의 이용과 제3자에 대한 정보제공이 허용되는 경우
- 기타 "회사"의 약관 및 정책에 따라 "회원"의 동의를 구한 경우

제 6 장 기타
제 20 조 (손해배상)

1. "회원"이 본 약관의 규정을 위반함으로 인하여 "회사"에 손해가 발생하게 되는 경우, 본 약관을 위반한 회원은 회사에 발생하는 모든 손해를 배상하여야 합니다.
2. "회원"이 "서비스"를 이용하는 과정에서 행한 불법행위나 본 약관 위반행위로 인하여 "회사"가 당해 회원 이외의 제3자로부터 손해배상 청구 또는 소송을 비롯한 각종 이의제기를 받는 경우 당해 회원은 자신의 책임과 비용으로 회사를 면책시켜야 하며, 회사가 면책되지 못한 경우 당해 회원은 그로 인하여 회사에 발생한 모든 손해를 배상하여야 합니다.

제 21 조(회사의 책임제한)
1. "회사"는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면책됩니다.
2. "회사"는 "회원"의 귀책사유로 인한 서비스의 이용장애에 대하여 책임을 지지 않습니다.
3. "회사"는 "회원"이 "서비스"를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며 그 밖에 서비스를 통하여 얻은 자료로 인한 손해 등에 대하여도 책임을 지지 않습니다. 회사는 회원이 게재한 게시물의 정확성 등 내용에 대하여는 책임을 지지 않습니다.
4. "회사"는 "회원" 상호간 또는 "회원"과 제3자 상호간에 서비스를 매개로 발생한 분쟁에 대해서는 개입할 의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다.
5. "회사"는 제3자가 서비스 내 화면 또는 링크된 웹사이트를 통하여 광고한 제품 또는 서비스의 내용과 품질에 대하여 감시할 의무가 없으며 그로 인한 어떠한 책임도 지지 아니합니다.
6. "회사"는 회사 및 회사의 임직원 그리고 회사 대리인의 고의 또는 중대한 과실이 없는 한 다음 각 호의 사항으로부터 발생하는 손해에 대해 책임을 지지 아니합니다.
(1) 회원정보 등의 허위 또는 부정확성에 기인하는 손해
(2) 서비스에 대한 접속 및 서비스의 이용과정에서 발생하는 개인적인 손해
(3) 서버에 대한 제3자의 모든 불법적인 접속 또는 서버의 불법적인 이용으로부터 발생하는 손해
(4) 서버에 대한 전송 또는 서버로부터의 전송에 대한 제3자의 모든 불법적인 방해 또는 중단행위로부터 발생하는 손해
(5) 제3자가 서비스를 이용하여 불법적으로 전송, 유포하거나 또는 전송, 유포되도록 한 모든 바이러스, 스파이웨어 및 기타 악성 프로그램으로 인한 손해
(6) 전송된 데이터의 오류 및 생략, 누락, 파괴 등으로 발생되는 손해
(7) 회원 간의 회원 상태정보 등록 및 서비스 이용 과정에서 발생하는 명예훼손 기타 불법행위로 인한 각종 민∙형사상 책임
7. "회사"는 무료로 제공되는 서비스 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다.

제 22 조 (분쟁조정)
1. "회사"는 위치정보와 관련된 분쟁에 대해 당사자 간 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 전기통신기본법 제40조의2의 규정에 의한 방송통신위원회에 재정을 신청할 수 있습니다.
2. "회사"는 "회원"으로부터 소정의 절차에 의해 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 적절한 절차를 거쳐 처리합니다. 단, 처리 시 일정 기간이 소요될 경우 "회원"에게 그 사유와 처리 일정을 즉시 통보합니다.
3. "회원"은 "회사"의 분쟁처리결과에 대하여 이의가 있을 경우 '금융위원회의 설치 등에 관한 법률'에 따른 금융감독원의 금융분쟁조정위원회나 '소비자기본법' 에 따른 한국소비자원의 소비자분쟁조정위원회, 전자거래기본법 제32조 및 동 시행령 제20조에 의하여 설치된 전자거래분쟁조정위원회에 회사의 전자금융거래서비스의 이용과 관련한 분쟁조정을 신청할 수 있습니다.

제 23 조 (준거법 및 재판관할)
1. 이 약관과 관련된 사항에 대하여는 대한민국 법을 준거법으로 합니다.
2. "회사"와 "회원"간 발생한 분쟁에 관한 소송은 민사소송법 상의 관할법원에 제소합니다.

제 24 조 (인수 및 합병)
1. "회사"는 인수 또는 합병이 되는 경우, 보유하고 있는 모든 지적 재산권을 포함하여 "회원"의 개인정보 또한 인수자에게 이관하며, 개인정보 이전에 관해서는 개별통지 합니다.
2. 인수자는 "서비스"의 회원에게 기존 회원 유지 또는 탈퇴의 기회를 제공합니다.
3. 인수자는 개인정보를 제3자와 회원의 동의 없이 사용할 수 없습니다.

제 7 장 주류 구매 서비스에 관한 특약
제 25 조 (적용 범위)
제7장의 규정은 제11조의2의 “주류 구매 서비스”에 관하여만 적용됩니다.

제 26 조 (분쟁의 해결)
1. "회사"는 주류의 수령과 관련하여 “판매자”, “회원” 등 관련 당사자 사이에 분쟁 등이 발생하는 경우에는 이에 관여하지 않으며 어떠한 책임도 부담하지 아니합니다. 이 경우 해당 분쟁 등은 관련 당사자가 직접 해결해야 합니다. 단, 필요한 범위에서 “회사”가 해당 분쟁 등의 해결을 지원할 수 있습니다.
2. 주류의 배송이 완료된 경우, “회원”은 “회사”에 대하여 주류의 하자, 미수령, 반품 등의 사유로 이의를 제기할 수 없습니다. 구매확정 이후에 발생하는 환불, 교환 기타 “판매자”와 “회원” 간에 발생하는 일체의 문제에 대해서는 “판매자”와 직접 해결하는 것을 원칙으로 합니다.

제 27 조 (청약철회 등)
1. “회원”은 전자상거래법 등 관련 법령에 따라 주류를 공급받거나 주류의 공급이 시작된 날부터 7일 이내에 청약철회를 할 수 있습니다. 다만, “회원”에게 책임이 있는 사유로 주류가 멸실 또는 훼손된 경우 등 전자상거래법 제17조 제2항에 따른 청약철회 제한 사유가 있는 경우에는 청약철회가 제한될 수 있습니다.
2. 제1항의 규정에도 불구하고, “회원”은 주류 상품의 내용이 표시∙광고 내용과 다르거나 계약내용과 다르게 이행된 경우에는 해당 상품을 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회를 할 수 있습니다.
3. “판매자”가 “회원”의 교환 또는 반품 신청에 대하여 대응하지 않거나 지연 대응하는 경우, “회사”는 “회원”에게 교환 또는 반품 신청의 사유를 파악하여 정당한 사유가 있는 경우에는 해당 거래를 취소하고, “판매자”에게 정산되지 아니한 결제대금이 “회원”에게 환불되도록 조치할 수 있습니다. 다만, “회원”의 교환 또는 반품 신청에 정당한 사유가 인정되지 않는 경우에는 그러하지 아니합니다.
4. “회원”이 교환 또는 반품 신청을 한 날로부터 14일이 지날 때까지 이미 수령한 상품을 “판매자”에게 반환하지 아니하고, 교환 또는 반품 의사 확인을 위한 연락(전화, 전자우편 등)에 응하지 아니하는 경우, “회사”는 “회원”이 교환 또는 반품의 의사를 철회한 것으로 보아 결제대금이 “판매자”에게 지급되도록 조치할 수 있습니다.
5. “회사”는 신용카드로 결제가 이루어진 경우 환불을 해당 신용카드 결제 취소를 통해서만 가능한 것이 원칙이나, 카드 부분취소가 불가능한 경우 등 부득이한 경우 현금 환불, 적립금 지급 등 대체 수단으로 환불할 수 있습니다.

*부칙
본 약관은 2023년 10월 27일부터 시행합니다.
					</textarea><br>
					<input type="checkbox" name="agree" id="checkbox_agree"><span>예약약관에 동의합니다.</span>
				</section>
			</div>
			<!-- 가게유의사항 -->
			<div class="section_box">
				<section class="sec06">
					<h2>가게유의사항</h2>
					<div class="agree_top">
						<span>
							<input type="checkbox" name="check" id="checkAll" onclick="checkbox_allCheck()">
							<span class="agree_content">
								<span class="all_agree">[전체동의]</span>
								 유의사항에 전체 동의 합니다.
							</span>
						</span>
						<span>
							<a href="#" class="info-content">보기</a>
						</span>
					</div>
					<div class="agree_main">
						<span>
							<input type="checkbox" name="check">
							<span class="agree_content">
								<span class="agree_font">[필수]</span> 
								식사 이용시간은 최대 2시간입니다.
							</span>
						</span>
						<span>
							<a href="#" class="info-content">보기</a>
						</span>
					</div>	
					<div class="agree_main">
						<span>
							<input type="checkbox" name="check">
							<span class="agree_content">
								<span class="agree_font">[필수]</span> 
								<span>
									예약시 결제하신 금액은 예약금으로 현장 방문시 환불 후<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;식사금 전액 현장 결제 될 예정입니다.
								</span>
							</span>
						</span>
						<span>
							<a href="#" class="info-content">보기</a>
						</span>
					</div>
					<div class="agree_main">
						<span>
							<input type="checkbox" name="check">
							<span class="agree_content">
								<span class="agree_font">[필수]</span> 
								애견동반은 불가능 합니다.
							</span>
						</span>
						<span>
							<a href="#" class="info-content">보기</a>
						</span>
					</div>
					<div class="agree_main">
						<span>
							<input type="checkbox" name="check">
							<span class="agree_content">
								<span class="agree_font">[필수]</span> 
								예약시간에서 20분이상 늦어 지실 경우 노쇼로 처리 됩니다.
							</span>
						</span>
						<span>
							<a href="#" class="info-content">보기</a>
						</span>
					</div>
				</section>
			</div>
			<button type="submit" class="payment" onclick="btnPay();">결제하기</button>
		</div>
		<!-- 	</action> -->
	</div>
 </form>
<!--  <footer> -->
<%--  	<jsp:include page="../inc/bottom.jsp"></jsp:include> --%>
<!--  </footer> -->
</body>
</html>