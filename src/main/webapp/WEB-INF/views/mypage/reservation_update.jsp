<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
<div class="wrapper row2">
  <section class="hoc container clear">
    <div class="center btmspace-80">
<%@ include file="../mypage/mypage_menu.jsp" %>

      <div class="reserv_center">
      <h6 class="heading underline font-x2" id="h6_login">예약 변경</h6>


      <form action="/reservation_update" method="post">
      		<div class="reserv_main">

      <div class="reserv_div">

	 	<div class="reserv_left">
	 	<label for="bhname">헌혈의 집 이름</label>
      	<input value="${res.bhname}" name="bhname" readonly>
      	</div>

		<div class="reserv_left">
		<label for="userid">아이디</label>
      	<input value="${res.userid}" name="userid" readonly>
      	</div>

      	<div class="reserv_left">
      	<label for="resdate">예약날짜</label>
      	<input type='date' value="${res.resdate}" name="resdate" id="resdate" min="">
      	</div>

      	<div class="reserv_left">
      	<label for="restime">예약시간</label>
      	<input value="${res.restime}" name="restime">
      	</div>

      	<div class="reserv_left">
     	<label for="goods">상품</label>
      	<input value="${res.goods}" name="goods">
      	</div>

      	<div class="reserv_left">
     	<label for="bhselect">헌혈 종류</label>
      	<input value="${res.bhselect}" name="bhselect">
      	</div>

      	<div class="reserv_left" style="display:none;">
     	<label for="resnum">예약내역 번호</label>
      	<input value="${res.resnum}" name="resnum">
      	</div>
      	</div>
	</div>


		<div class="reserv_btn">
      	<input type="submit" value="예약변경">
      	</div>
      </form>
      </div>
    </div>
  </section>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function() {
		var today = new Date().toISOString().split("T")[0];
		$("#resdate").attr("min", today);
	});
</script>
</div>
<%@ include file="../includes/footer.jsp" %>