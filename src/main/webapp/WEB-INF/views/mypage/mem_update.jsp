<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>Gleblu</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="hoc clear">
    <div class="fl_left"> 
      <!-- ################################################################################################ -->
      <ul class="nospace">
        <li><i class="fas fa-phone rgtspace-5"></i> 이미지 바꾸고아이디?</li>
      </ul>
      <!-- ################################################################################################ -->
    </div>
    <div class="fl_right"> 
      <!-- ################################################################################################ -->
      <ul class="nospace">
        <li><a href="/"><i class="fas fa-home"></i></a></li>
        <li><a href="loginform" title="Login"><i class="fas fa-sign-in-alt"></i></a></li>
        <li><a href="signupform" title="Sign Up"><i class="fas fa-edit"></i></a></li>
      </ul>
      <!-- ################################################################################################ -->
    </div>
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="hoc clear">
    <div id="logo" class="fl_left"> 
      <!-- ################################################################################################ -->
      <h1><a href="/">헌혈의 집</a></h1>
      <!-- ################################################################################################ -->
    </div>
    <nav id="mainav" class="fl_right"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active"><a href="/">Home</a></li>
        
        <li><a href="boardform">게시판</a></li>
        <li><a href="mapform">예약페이지</a></li>
        <li><a href="mypageform">마이페이지</a></li>
      </ul>
      <!-- ################################################################################################ -->
    </nav>
  </header>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <section class="hoc container clear"> 
    <div class="center btmspace-80">
      <h6 class="heading underline font-x2">개인정보변경</h6>
      <form action="/mem_update" method="post">
      	<input value="${user.userid}" name="userid">
      	<input value="${user.userpw}" name="userpw">
      	<input value="${user.username}" name="username">
      	<input value="${user.userphone}" name="userphone">
      	<input value="${user.useremail}" name="useremail">
      	<input value="${user.userbtype}" name="userbtype">
      	<input value="${user.userbirth}" name="userbirth">
      	<input value="${user.useraddr}" name="useraddr">
      	<input type="hidden" value="${user.bcount}" name="bcount">
      	<input type="hidden" value="${user.point}" name="point">
      	<input type="submit" value="개인정보변경">
      </form>
    </div>
  </section>
   </div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row4">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_quarter first">
      <h6 class="heading">2조</h6>
      <ul class="nospace linklist contact btmspace-30">
        <li><i class="fas fa-phone"></i> 뭘 넣죠?</li>
        <li><i class="far fa-envelope"></i> 조원 이름?</li>
      </ul>
    </div>
    <div class="one_quarter">
      <h6 class="heading">넣어도 되고 지워도 되고</h6>
      <ul class="nospace linklist">
        <li>
          <article>
            <p class="nospace btmspace-10"><a href="#">???</a></p>
            <time class="block font-xs" datetime="2045-04-06">완성날짜?</time>
          </article>
        </li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">Domain Name</a></p>
    
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>