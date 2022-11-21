<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.video{
	display:flex;
	justify-content:center;
	margin-top:25px;
}
.title{
	margin: 0 auto;
	width: 70%;
	text-align:center;
	font-size:1.5rem;
	font-weight:bold;
	margin-top:20px;
	margin-bottom:8px;
}
.description{
	text-align:center;
	margin:0 auto;
	font-size: 1rem;
	width:70%;
}
</style>
</head>
<body>
<%@ include file="./header.jsp"%>
	<div class="middle">
		<div class="title">My Car Battery Management Situation </div>
		<div class="description">Matlab SimuLink를 활용한 BMS(Battery Management System) 구현</div>
		<div class="video">
			<video autoplay loop muted preload="auto" width="80%">
				<source src="/images/dataflow.mp4"} type="video/mp4" />
			</video>
		</div>
	</div>
</body>
</html>