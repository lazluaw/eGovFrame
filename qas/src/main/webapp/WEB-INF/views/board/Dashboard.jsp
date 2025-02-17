<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../common/Header.jsp" />
<div class="dashboard-page">
	<h1 class="page-title">My QAS</h1>
	<div>
		<!--프로필 수정-->
		<!-- <div v-if="edit"> -->
		<div class="div-auth mx-auto" title="<h3 class='mt-0'>Edit Profile</h3>" >
			<form class="mt">
				<div class="form-group" id="editProfile">
					<img src="https://us.123rf.com/450wm/kahovsky/kahovsky1803/kahovsky180300069/98519348-%EC%9E%AC%EB%AF%B8-%ED%96%89%EB%B3%B5-%EA%B7%80%EC%97%AC%EC%9A%B4-%ED%96%89%EB%B3%B5-%EB%AF%B8%EC%86%8C-%EC%95%84%EB%B3%B4%EC%B9%B4%EB%8F%84-%EB%B2%A1%ED%84%B0-%ED%8F%89%EB%A9%B4-%EB%A7%8C%ED%99%94-%EC%BA%90%EB%A6%AD%ED%84%B0-%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8-%EC%95%84%EC%9D%B4%EC%BD%98%EC%9E%85%EB%8B%88%EB%8B%A4-%ED%9D%B0-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EA%B3%BC%EC%9D%BC-%EC%95%84%EB%B3%B4%EC%B9%B4%EB%8F%84-%EA%B0%9C%EB%85%90.jpg?ver=6">
					<button class="auth-btn mb-3" id="imgEdit_btn" style="width: 100%">Image Edit</button>
					<div class="form-group">
						<input class="form-control no-border" required type="text" placeholder="변경할 ID" />
					</div>
					<button type="submit" class="auth-btn mb-3" id="profileEdit_btn">Profile Edit</button>
					<button type="submit" class="auth-btn mb-3" id="cancel">Cancel</button>
				</div>
			</form>
		</div>
	</div>

	<!-- 	
	<div v-else>
		<col xs="12" md="6">
		<div id="profile">
			<figure>
				<img src="https://us.123rf.com/450wm/kahovsky/kahovsky1803/kahovsky180300069/98519348-%EC%9E%AC%EB%AF%B8-%ED%96%89%EB%B3%B5-%EA%B7%80%EC%97%AC%EC%9A%B4-%ED%96%89%EB%B3%B5-%EB%AF%B8%EC%86%8C-%EC%95%84%EB%B3%B4%EC%B9%B4%EB%8F%84-%EB%B2%A1%ED%84%B0-%ED%8F%89%EB%A9%B4-%EB%A7%8C%ED%99%94-%EC%BA%90%EB%A6%AD%ED%84%B0-%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8-%EC%95%84%EC%9D%B4%EC%BD%98%EC%9E%85%EB%8B%88%EB%8B%A4-%ED%9D%B0-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EA%B3%BC%EC%9D%BC-%EC%95%84%EB%B3%B4%EC%B9%B4%EB%8F%84-%EA%B0%9C%EB%85%90.jpg?ver=6">
				<h5 class="follow">
					<strong>userId</strong>
				</h5>
				{{$store.state.userId}}
				<br>
				<h6 class="follow">
					Follower &nbsp; <strong>100</strong>
				</h6>
				<h6 class="follow">
					Follow &nbsp; <strong>200</strong>
				</h6>
				<br>
				<button id="profileEdit_btn">프로필 수정 </button>
			</figure>
		</div>
		</col>
	</div>
 -->
	<div>
		<div id="columns">
			<figure style="float: left;">
				<img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/4273/rapunzel.jpg">
				<p class="userId">
					<span class="fw-semi-bold">userId </span>
				</p>
				<p class="boardContent">boardContent</p>
				<br>
				<span>{{ moment().format('MMMM do YYYY, h:mm:ss a') }}</span>
			</figure>
		</div>
	</div>
</div>
<jsp:include page="../common/Footer.jsp" />