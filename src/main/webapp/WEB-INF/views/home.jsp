<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta charset="UTF-8">
<title>DAIP</title>

<link href="<c:url value="/resources/img/logo.png" />" rel="icon"
	type="/img/logo.png" />
<link href="<c:url value="/resources/css/style.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/hover-bootstrap.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />

<meta name="viewport" content="width=device-width, initial-scale=1.0" />




</head>
<body id="login" class="eccp fr" dir="ltr">

	<div class="navbar-header">
		<a class="navbar-brand navbar-brand-lg " href="/"> <img
			class="logo  animated-hover" alt="Algérie Poste"
			src="<c:url value="/resources/img/logo-round.png" />" />
		</a>
	</div>

	<div class="container">
		<div class="row" style="margin-top: 90px">
			<div class="col-md-6 col-md-push-3" style="margin-left: 5%">
				<div class="heading">
					<h1>Algérie Poste</h1>
					<p>Géstion et suivi des contrats DIAP</p>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top: 20px">
			<div class="col-md-5 col-md-push-3" style="margin-left: 5%">
				<form class="form-horizontal form-login defaultForm" name="form1"
					method="post" action="Connexion">
					<fieldset>
						<legend>Se connecter</legend>
						<div class="form-group">
							<label class="col-xs-12 col-sm-6 col-lg-6 control-label">Nom
								d'utilisateur</label>
							<div class="col-xs-12 col-sm-6 col-lg-6">
								<input class="form-control" type="text" name="username" />
								<%
									if (request.getAttribute("error") != null) {
								%>
								<small class="help-block">username ou mot de passe
									incorrect</small>
								<%
									}
								%>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-12 col-sm-6 col-lg-6 control-label">Mot
								de passe</label>
							<div class="col-xs-12 col-sm-6 col-lg-6">
								<input class="form-control" type="password" name="password" />
								<%
									if (request.getAttribute("error") != null) {
								%>
								<small class="help-block">username ou mot de passe
									incorrect</small>
								<%
									}
								%>
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-5 ">
								<h5>Mot de passe oublié?</h5>
							</div>
							<div class="col-lg-4 col-lg-push-2">
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-sign-in"></i>&nbsp;Connexion
								</button>
							</div>
						</div>
					</fieldset>
				</form>

				<p class="copywrite text-center">
					<em>Tous droits réservés. Algérie Poste &copy; 2016</em>
				</p>
			</div>
		</div>
	</div>
	<script src="<c:url value='/ressources/js/jquery.js' />"></script>
	<script src="<c:url value='/ressources/js/formValidation.js' />"></script>
	<script src="<c:url value='/ressources/js/framework/bootstrap.js' />"></script>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$('.defaultForm').formValidation({
				message : 'This value is not valid',
				icon : {
					valid : 'fa fa-check',
					invalid : 'fa fa-times',
					validating : 'fa fa-refresh'
				},
				fields : {

					username : {
						validators : {
							notEmpty : {
								message : 'le champ ne doit pas être vide',
							},
						},
					},
					password : {
						validators : {
							notEmpty : {
								message : 'le champ ne doit pas être vide',
							},
						},
					},

				}

			});
		});
	</script>


</body>
</html>