<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class='navbar navbar-inverse navbar-fixed-top' role='navigation'>
	<div class='container'>
		<div class='navbar-header'>
			<button class='navbar-toggle' data-target='.navbar-collapse'
				data-toggle='collapse' type='button'>
				<span class='sr-only'></span> <span class='icon-bar'></span> <span
					class='icon-bar'></span> <span class='icon-bar'></span>
			</button>
			<a class='navbar-brand' href='/'><spring:message code="app.name" /></a>
		</div>
		<div class='collapse navbar-collapse'>
			<ul class='nav navbar-nav'>
				<li><a href='http://www.smurfdad.es/p/about.html'> Sobre mí
				</a></li>
			</ul>
		</div>
	</div>
</div>
<div class='jumbotron'>
	<div class='container'>
		<h1>
			<spring:message code="app.name" />
		</h1>
		<p>
			<spring:message code="app.description" />
		</p>
	</div>
</div>
