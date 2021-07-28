<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>GameShop : Login</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style_login.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</head>
<body>

	<!-- The video -->
	<iframe id="myVideo" width="100%" height="100%" 
				src="https://www.youtube.com/embed/6vdE4lchqrs?rel=0&amp;autoplay=1&mute=1&amp;loop=1;playlist=6vdE4lchqrs" 
				frameborder="0"> 
	</iframe>

	<div class="wrap">
		<div class="form-wrap">

			<!--/// 로그인 & 회원가입 전환 버튼 ///-->
			<div class="button-wrap">
				<div id="btn"></div>
				<button type="button" class="togglebtn" onclick="login()">LOG IN</button>
				<button type="button" class="togglebtn" onclick="register()">REGISTER</button>
			</div>

			<!--/// SNS를 통한 가입 아이콘 (구현 X) ///-->
			<div class="social-icons">
				<img src="${pageContext.request.contextPath}/resources/img/login_icon/kakao.png" alt="kakao">
				<img src="${pageContext.request.contextPath}/resources/img/login_icon/naver.png" alt="naver">
				<img src="${pageContext.request.contextPath}/resources/img/login_icon/google.png" alt="google">
			</div>

			<!--/// 로그인 ///-->
			<form id="login" action="/member/login" method="post" class="input-group">
				<input type="text" class="input-field" name="mem_userid" placeholder=" ID..." required>
				<input type="password" class="input-field" name="mem_password" placeholder=" Password..." required>
				<input type="checkbox" class="checkbox">
				<span>Remember Password</span>
				<button class="submit">Login</button>
			</form>

			<!--/// 회원가입 ///-->
			<form id="register" action="/member/join/regist" method="post" class="input-group">
				<input type="text" class="input-field" name="mem_userid" placeholder=" ID..." required>
				<input type="email" class="input-field" name="mem_email" placeholder=" Email or Phone..." required>
				<input type="nickname" class="input-field" name="mem_nickname" placeholder=" NickName..." required>
				<input type="password" class="input-field" name="mem_password" placeholder=" Password..." required>
				<input type="checkbox" class="checkbox">
				<span>Terms and conditions</span>
				<!-- 이용약관 -->
				<button class="submit">REGISTER</button>
			</form>
		</div>
	</div>

	<script>
		var x = document.getElementById("login");
		var y = document.getElementById("register");
		var z = document.getElementById("btn");

		function login() {
			x.style.left = "50px";
			y.style.left = "450px";
			z.style.left = "0";
		}

		function register() {
			x.style.left = "-400px";
			y.style.left = "50px";
			z.style.left = "120px";
		}

		var video = document.getElementById("myVideo");
	</script>
</body>
</html>