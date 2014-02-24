<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta content='width=device-width, initial-scale=1.0' name='viewport' />
<meta content='<tiles:insertAttribute name="site" ignore="true" />'
	itemprop='name' />
<meta content='Smurf Dad' name='Author' />
<title><tiles:insertAttribute name="site" ignore="true" /> <tiles:insertAttribute
		name="title" ignore="true" /></title>
<!-- Latest compiled and minified CSS -->
<link
	href='//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css'
	rel='stylesheet' type='text/css' />
<!-- Latest compiled and minified JavaScript -->
<script src='//code.jquery.com/jquery.js' type='text/javascript'></script>
<script
	src='//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js'
	type='text/javascript'></script>

</head>
<body>
	<div class='section' id='cabecera'>
		<div class='navbar navbar-inverse navbar-fixed-top' role='navigation'>
			<div class='container'>
				<div class='navbar-header'>
					<button class='navbar-toggle' data-target='.navbar-collapse'
						data-toggle='collapse' type='button'>
						<span class='sr-only'></span> <span class='icon-bar'></span> <span
							class='icon-bar'></span> <span class='icon-bar'></span>
					</button>
					<a class='navbar-brand' href='/'><tiles:insertAttribute
							name="site" ignore="true" /></a>
				</div>
				<div class='collapse navbar-collapse'>
					<ul class='nav navbar-nav'>
						<li><a href='http://www.smurfdad.es/p/about.html'> Sobre
								mí </a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class='jumbotron'>
			<div class='container'>
				<h1>
					<tiles:insertAttribute name="site" ignore="true" />
				</h1>
				<p>
					<tiles:insertAttribute name="description" ignore="true" />
				</p>
			</div>
		</div>
	</div>
	<div class='container'>
		<div class='row'>
			<div class='col-md-9 section' id='principal'>
				<h2><tiles:insertAttribute name="title"/></h2>
				<tiles:insertAttribute name="body" />
			</div>
			<div class='col-md-3 section' id='lateral'>
				<div class='panel panel-default'>
					<div class='panel-heading'>
						<h3 class='panel-title'>Sigueme a través de</h3>
					</div>
					<div class='panel-body'>
						<a alt="Twitter" href="http://twitter.com/Smurf_Dad"
							target="_blank" title="Twitter"> <img
							src="https://raw.github.com/smurfdad/cdn/master/images/icons/twitter_48.png" />
						</a> <a alt="Feed" href="http://www.smurfdad.es/feeds/posts/default"
							target="_blank" title="Feed"> <img
							src="https://raw.github.com/smurfdad/cdn/master/images/icons/48px-Feed-icon.png" />
						</a> <a alt="Github" href="http://github.com/smurfdad" target="_blank"
							title="Github"> <img
							src="https://raw.github.com/smurfdad/cdn/master/images/icons/github.png" />
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class='well well-sm text-center section' id='pie'>
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>