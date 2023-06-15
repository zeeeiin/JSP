<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서강준(SEO KANG JUN) 팬페이지</title>
	<!-- CSS 적용 -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/main.css">
</head>
<body>
	<header>
        <div class="title">SKYBLUE IN YOUR EYES</div>
        <div class="title-info">서강준(SEO KANG JUN) 팬페이지</div>
    </header>
    <!-- end header -->
    <div class="container" >
        <div class="nav">
            <div class="actor-info">
                <div class="profile-img">
                    <img src="images/skj_img.png" alt="official_img">
                </div>
                <div class="profile-info">
                    <div class="title">OFFICIAL SEO KANG JUN</div>
                    <ul>
                        <li>음악</li>
                        <li><a href="https://www.instagram.com/seokj1012/" target="_blank">서강준 INSTAGRAM</a></li>
                        <li><a href="">소속사</a></li>
                    </ul>
                </div>
            </div>
            <div class="cafe-menu">
                <div class="menu-items"><input type="button" onclick="location.href=''">JOIN</div>
                <div class="menu-items"><a href="<%=request.getContextPath()%>/member/member_login.member">LOGIN</a></div>
                <div class="menu-items"><a href="">BOARD</a></div>
                <div class="menu-items"><a href="">TALKTALK</a></div>
            </div>
        </div>