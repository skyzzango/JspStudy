<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-19
  Time: 오후 2:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Title</title>
</head>
<body>
<section>
	<div class="page-card__content">
		<div class="login-form">
			<div class="page-card__title u-text-upper">로그인</div>
			<div class="content">
				<form class="login-form-inputs">
					<div class="login-form-inputs__text-input eb-validatable-textbox">
						<div class="eb-textbox eb-input eb-textbox--size-default eb-textbox--block">
							<div class="eb-textbox__input-wrapper">
								<input type="text" id="login-form-input-email"
								       name="email" class="eb-textbox__input"
								       placeholder="이메일" autocomplete="on"
								       value="skyzzango@naver.com"></div>
						</div>
					</div>
					<div class="login-form-inputs__text-input eb-validatable-textbox">
						<div class="eb-textbox eb-input eb-textbox--size-default eb-textbox--block">
							<div class="eb-textbox__input-wrapper">
								<input type="password" id="login-form-input-password"
								       name="password" class="eb-textbox__input"
								       placeholder="비밀번호" autocomplete="on"
								       value="cpdlswl$86"></div>
						</div>
					</div>
					<div class="login-form-checkbox">
						<input type="checkbox" id="rememberMe" name="rememberMe" class="login-form-checkbox__checkbox"
						       value="false">
						<div class="login-form-checkbox__labels" tabindex="0">
							<label class="login-form-checkbox__icon-wrapper login-form-checkbox__clickable"
							       for="rememberMe"><span class="login-form-checkbox__icon-inner-wrapper">
								<i class="login-form-checkbox__icon login-form-checkbox__icon--is-not-checked icon icon-square"></i><i
									class="login-form-checkbox__icon login-form-checkbox__icon--is-checked icon icon-checkbox-fill"></i></span></label><label
								class="login-form-checkbox__clickable login-form-checkbox__label" for="rememberMe">로그인
							상태 유지</label></div>
					</div>
					<button type="submit" id="login-form-button-login" name="login-form-button-login"
					        class="eb-button eb-button--submit eb-button--role-primary eb-button--size-large eb-button--block">
						로그인
					</button>
					<div class="login-form-inputs__sub-buttons"><a class="login-form-inputs__sub-button" tabindex="0">비밀번호
						재설정</a></div>
				</form>
			</div>
		</div>
		<div class="login-methods"><a class="login-methods__button" tabindex="0"><img class="login-methods__button-icon"
		                                                                              src="https://elicewebstatic2.azureedge.net/static/imgs/icons/facebook.svg"
		                                                                              alt="facebook-icon">
			<div class="login-methods__button-label">페이스북 로그인</div>
		</a><a class="login-methods__button" tabindex="0"><img class="login-methods__button-icon"
		                                                       src="https://elicewebstatic2.azureedge.net/static/imgs/icons/google.svg"
		                                                       alt="google-icon">
			<div class="login-methods__button-label">구글 로그인</div>
		</a></div>
		<div class="ask-another"><a class="ask-another__link" href="/signup">아직 계정이 없으신가요?</a></div>
	</div>
</section>
</body>
</html>
