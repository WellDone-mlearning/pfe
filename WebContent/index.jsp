<jsp:include page="assets/layout/common/header.jsp"></jsp:include>
<div class="loginwrapper">
	<div class="loginwrap zindex100 animate2 bounceInDown">
		<h1 class="logintitle"><span class="iconfa-lock"></span> Connexion <span class="subtitle">Se connecter pour pouvoir continuer!</span></h1>
		<div class="loginwrapperinner">
			<form id="loginform" action="UserServlet" method="POST">
				<p class="animate4 bounceIn"><input type="text" id="username" name="login" placeholder="Nom d'utilisateur" /></p>
				<p class="animate5 bounceIn"><input type="password" id="password" name="password" placeholder="Mot de passe" /></p>
				<p class="animate6 bounceIn"><button class="btn btn-info btn-block">Me connecter</button></p>
				<p class="animate7 bounceIn"><button class="btn btn-warning btn-block">Explorer les formations</button></p>
				<p class="animate8 fadeIn"><a href=""><span class="icon-question-sign icon-white"></span> Forgot Password?</a></p>
			</form>
		</div>
	</div>
	<div class="loginshadow animate3 fadeInUp"></div>
</div>
<jsp:include page="assets/layout/common/footer.jsp"></jsp:include>