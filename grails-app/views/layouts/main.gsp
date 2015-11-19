<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="IG SYS"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:set var="isHome" value="${pageProperty(name: 'page.isHome')}"/>
		<g:layoutHead/>
	</head>
	<body>
		<div class="navbar-wrapper">
			<div class="container">
				<div class="row top-bar">
					<div class="col-md-6">Av. Josina Machel, 999, Maputo - Moçambique | Tel: 21 33 33 33</div>
					<div class="col-md-6 user-menu">
						<sec:ifLoggedIn>
							Ola <sec:loggedInUserInfo field="username"/> | <a href="#">Meu Perfil</a> | <a href="/igsys/j_spring_security_logout">Logout</a>
						</sec:ifLoggedIn>
						<sec:ifNotLoggedIn>
							<g:link controller="admin" action="login">Login</g:link>
						</sec:ifNotLoggedIn>
					</div>
				</div>
				<nav class="navbar navbar-inverse navbar-static-top">
					<div class="container">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="${createLink(uri: '/')}">IG SYS</a>
						</div>
						<div id="navbar" class="navbar-collapse collapse navbar-right">
							<ul class="nav navbar-nav">
								<li><a href="${createLink(uri: '/')}">Home</a></li>
								<sec:ifLoggedIn>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Produtos <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><g:link controller="produto" action="create">Cadastrar</g:link></li>
										<li><g:link controller="produto" action="index">Consultar</g:link></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pedidos <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><g:link controller="pedido" action="create">Cadastrar</g:link></li>
										<li><g:link controller="pedido" action="index">Consultar</g:link></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Clientes <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><g:link controller="cliente" action="create">Cadastrar</g:link></li>
										<li><g:link controller="cliente" action="index">Consultar</g:link></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Utilizador <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><g:link controller="utilizador" action="create">Cadastrar</g:link></li>
										<li><g:link controller="utilizador" action="index">Consultar</g:link></li>
									</ul>
								</li>
								</sec:ifLoggedIn>
								<li><a href="#about">Quem Somos</a></li>
								<li><a href="#contact">Contacte-nos</a></li>
							</ul>
						</div>
					</div>
				</nav>

			</div>
		</div>
		<div id="main" class="container">
			<g:layoutBody/>
			<!-- FOOTER -->
			<footer>
				<p class="pull-right"><a href="#">Back to top</a></p>
				<p>&copy; 2015 IGSYS. Todos os direitos reservados</p>
			</footer>
		</div>
	</body>
</html>
