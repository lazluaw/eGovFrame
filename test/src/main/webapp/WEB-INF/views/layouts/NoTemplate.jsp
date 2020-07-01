<!-- 로그인전 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="eu">
<head>
<tiles:insertAttribute name="header" />
</head>
<body>
	<div id="wrapper">
		<tiles:insertAttribute name="navigator" />
		<section>
			<article>
				<tiles:insertAttribute name="noTemplate" />
			</article>
		</section>
	</div>
</body>
</html>