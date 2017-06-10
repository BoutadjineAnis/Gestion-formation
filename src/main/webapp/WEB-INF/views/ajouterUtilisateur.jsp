<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="layouts/taglib.jsp" %>

<body class="eccp fr">
	<div id="wrapper">
	<div class="row">
					<div class="col-md-6">
						<div class="heading">
							<h1>Algérie Poste</h1>
							<p>Gestion de la formation</p>
						</div>
					</div>
					<div class="col-md-1 " style="margin-left: 40%">
						<img src="<c:url value="/resources/img/logo.png" />" alt="" width="100" />
					</div>
					
				</div>
<div class="contact-form">
   <form:form commandName="user"  method="post" cssClass="form-horizontal defaultForm" id="form">
      <div class="form-group">
         <label class="col-md-3 control-label">Nom d'utilisateur</label>
         <div class="col-md-3">
            <form:input path="nomUtilisateur" cssClass="form-control"/>
            <form:errors path="nomUtilisateur"></form:errors>
         </div>
      </div>
      
      <div class="form-group">
         <label class="col-md-3 control-label">E-mail</label>
         <div class="col-md-3">
            <form:input path="email" cssClass="form-control"/>
            <form:errors path="email"></form:errors>
         </div>
      </div>
      
      <div class="form-group">
         <label class="col-md-3 control-label">Mot de passe</label>
         <div class="col-md-3">
            <form:password path="motDePasse" cssClass="form-control"/>
            <form:errors path="motDePasse"></form:errors>
         </div>
      </div>
      <div class="form-group">
         <label class="col-md-3 control-label">Entrez à nouveau le mot de passe</label>
         <div class="col-md-3">
            <input type="password" name="motDePasseAgain" id="motDePasseAgain" class="form-control">
         </div>
      </div>
      
      <div class="form-group">
         <div class="col-md-6 col-md-offset-3">
            <button type="reset" class="btn btn-default">Annuler</button>
            <button type="submit" class="btn btn-primary">Valider</button>
         </div>
      </div>
   </form:form>
</div>
</div>
<!-- /.contact-form -->


<script type="text/javascript">
	
	$(document).ready(function() {
		$("#form").validate(
		 {
			 rules : {
				 nomUtilisateur : {
					 required : true,
					 minlength : 5,
					 remote : {
						 url : "<spring:url value="/utilisateurs/disponible"/>",
						 type : "get",
						 data : {
							 nomUtilisateur : function(){
								 return $("#nomUtilisateur").val();
							 }
						 }
						 
					 }
					},
					email : {
					 required : true,
					 email : true,
					},
					motDePasse : {
						 required : true,
						 minlength : 5,
						 
						},
					motDePasseAgain : {
							 required : true,
							 minlength : 5,
							 equalTo : "#motDePasse"
							}
			     },
		 messages: {
		        
	         nomUtilisateur: {
	             required: "Ce champ est obligatoire",
	             minlength: "Inserer un nom d'utilisateur de 5 caractaire minimum",
	           	 remote : "un tel utilisateur existe déjà"
	         },
	         email : {
	             required: "Ce champ est obligatoire",
	             email : "Inserer un email valide"
	         },
	         motDePasse : {
	        	 required : "Ce champ est obligatoire",
	             minlength: "Inserer un nom mot de passe de 5 caractaire minimum"

	         },
	         motDePasseAgain : {
				 required : "Ce champ est obligatoire",
				 equalTo : "le mot de passe n'est pas identique"
				}
	     },
			    
			 }
			 
		 		
		
		);
		
	});
		
	</script>
