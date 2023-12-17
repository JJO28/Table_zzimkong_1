document.addEventListener('DOMContentLoaded', function() {

	// 더보기 버튼 기능
	var moreButton = document.querySelector('.more-button');
	var hiddenItems = document.querySelectorAll('.review_select_list .rv_sl_1:nth-child(n+6)');
	var svgIcon = moreButton.querySelector('.svg-icon');
	var buttonText = moreButton.querySelector('.blind-text');

	moreButton.addEventListener('click', function(event) {
		event.preventDefault();

		hiddenItems.forEach(function(item) {
			item.style.display = (item.style.display === 'none' || item.style.display === '') ? 'block' : 'none';
		});

		if (buttonText.textContent.trim() === '더보기') {
			buttonText.textContent = '접기';
			svgIcon.style.transform = 'rotate(180deg)'; // 아이콘 뒤집기
		} else {
			buttonText.textContent = '더보기';
			svgIcon.style.transform = 'rotate(0deg)'; // 원래 아이콘
		}
	});

	// ---------댓글-----------------------------------------------
	// 댓글 아이콘 클릭 이벤트 핸들러
	document.getElementById('commentIcon').addEventListener('click', function() {
		// 새 창으로 댓글 페이지 열기
		window.open('${pageContext.request.contextPath}/review/comment', 'CommentWindow', 'width=600,height=400');
	});

	// ---------------------------------------------------------------


	// 하트누르기 
	var heartIcon = document.getElementById('heartIcon');
	if (heartIcon) {
		heartIcon.addEventListener('click', function() {
			this.classList.toggle('far');
			this.classList.toggle('fas');
			this.classList.toggle('filled');
		});
	}

	// -----------------------------------------------------------------------	
	var carouselInner = document.querySelector('.carousel-inner');
	var images = Array.from(carouselInner.children);
	var imageWidth = images[0].getBoundingClientRect().width;

	images.forEach(function(img, idx) {
		img.style.left = imageWidth * idx + 'px';
	});

	var currentIndex = 0;

	document.querySelector('.carousel-prev').addEventListener(
		'click',
		function() {
			if (currentIndex > 0) {
				currentIndex--;
				carouselInner.style.transform = 'translateX('
					+ (-imageWidth * currentIndex) + 'px)';
			}
		});

	// 리뷰 메뉴버튼 

	document.querySelectorAll('.menu_button').forEach(button => {
		button.addEventListener('click', function() {
			this.classList.toggle('active');
		});
	});


	// 사진 넘기기 
	document.querySelector('.carousel-next').addEventListener(
		'click',
		function() {
			if (currentIndex < images.length - 1) {
				currentIndex++;
				carouselInner.style.transform = 'translateX('
					+ (-imageWidth * currentIndex) + 'px)';
			}
		});

	// 모든 "삭제" 버튼에 대해 이벤트 리스너를 추가
	var deleteButtons = document.querySelectorAll('.review_delete');
	deleteButtons.forEach(function(deleteButton) {
		deleteButton.addEventListener('click', function(event) {
			// 팝업창을 표시
			deleteConfirmationPopup.style.display = 'block';

			// 기본 이벤트 방지 (링크 이동 등)
			event.preventDefault();
		});
	});

	// "네" 버튼 클릭 이벤트 리스너
	document.getElementById('confirmDelete').addEventListener('click', function() {
		// 삭제 로직을 여기에 추가
		// 예: 서버에 삭제 요청을 보낸다거나, 리스트에서 해당 항목을 제거

		// 팝업창을 숨김
		deleteConfirmationPopup.style.display = 'none';
	});

	// "아니오" 버튼 클릭 이벤트 리스너
	document.getElementById('cancelDelete').addEventListener('click', function() {
		// 팝업창을 숨김
		deleteConfirmationPopup.style.display = 'none';
	});

});
