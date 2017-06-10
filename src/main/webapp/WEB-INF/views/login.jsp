<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layouts/taglib.jsp" %>

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
					<p>Gestion de la formation</p>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top: 20px">
			<div class="col-md-5 col-md-push-3" style="margin-left: 5%">
				<form class="form-horizontal form-login defaultForm" name="form"
					action='/GestionFormation/j_spring_security_check' method='POST'>
					<fieldset>
						<legend>Se connecter</legend>
						<div class="form-group">
							<label class="col-xs-12 col-sm-6 col-lg-6 control-label">Nom
								d'utilisateur</label>
							<div class="col-xs-12 col-sm-6 col-lg-6">
								<input class="form-control" type="text" name="j_username" />
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
								<input class="form-control" type="password" name="j_password" />
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
	
	<script src="<c:url value="/resources/js/jquery.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/formValidation.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/framework/bootstrap.js" />" type="text/javascript"></script>
	 <script src="<c:url value="/resources/js/jquery.validate.min.js" />"></script>

<script type="text/javascript">
	
	$(document).ready(function() {
		$("#form").validate(
		 {
			 rules : {
				 titre : {
					 required : true,
					 minlength : 5
				 },
				 
				 
				  
			     },
			     
			     messages: {
			        
			         titre: {
			             required: "Ce champ est obligatoire",
			             minlength: ("Le titre doit contenir au moins 5 caractères")
			         },
			        
			     
			     },
			     highlight:function(element){
			    	 $(element).closest(".form-group").removeClass("has-success").addClass('has-error');
			    	 
			     },
			     
			     unhighlight:function(element){
			    	 $(element).closest(".form-group").removeClass("has-error").addClass('has-success');
			    	 
			     },
			     
				 
			 }
			 
		 		
		
		);
		
	});
		
	</script>