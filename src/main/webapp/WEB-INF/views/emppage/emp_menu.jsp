<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="layout/styles/mypage.css" rel="stylesheet" type="text/css" media="all">


		<div class="menu_two">
		<nav class="menu">

			<ul class="emp_menu_list">
				<li><input type="button" id="reservation_page" value="예약내역"></li>
				<li><input type="button" id="today_res" value="헌혈예정"></li>
				<li><input type="button" id="bloodlist" value="헌혈내역"></li>
				<li><input type="button" id="board" value="공지사항"></li>
			</ul>
		</nav>
		</div>


<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
		$("#reservation_page").click(function () {
			location.href = "/empres";
		});//예약내역 클릭
		$("#today_res").click(function () {
			location.href = "/today_res";
		});//헌혈예정 클릭
		$("#bloodlist").click(function () {
			location.href = "/empblist";
		});//헌혈내역 클릭
		$("#board").click(function () {
			location.href = "/boardform";
		});//공지사항 클릭
</script>