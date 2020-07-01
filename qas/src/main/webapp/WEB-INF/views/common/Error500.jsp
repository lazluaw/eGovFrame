<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERROR 500</title>
<style>
body {
	text-align: center;
}
</style>
</head>
<body>
<img src="https://cdn.pixabay.com/photo/2018/01/16/10/36/mistake-3085712_1280.jpg">
<h1>서버 상 오류가 발생하였습니다.</h1>
<button type="submit" class="main_btn">메인으로</button>
</body>
<script>
	$('.main_btn').click(function(e) {
		e.preventDefault()
		location.href = '${context}/main/Home'
	})
</script>
</html>