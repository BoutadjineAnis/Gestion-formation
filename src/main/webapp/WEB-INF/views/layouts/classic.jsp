<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/img/logo.png" />" rel="icon"
	type="/img/logo.png" />
<link href="<c:url value="/resources/css/style.min.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/hover-bootstrap.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title><tiles:getAsString name="title"></tiles:getAsString></title>
</head>

<body id="login" class="eccp fr" dir="ltr">
<script src="<c:url value="/resources/js/jquery-3.2.1.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/jquery.validate.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />" type="text/javascript"></script>



	<!-- Sidebar -->
	<div id="sidebar-wrapper">
		<ul class="sidebar-nav">





			<li class="divider"></li>



			<li class="divider"></li>
			<li><a href=" /WebApp/Traitement_Reporting">&nbsp;Reporting</a>
			</li>
			<li class="divider"></li>
			<li><a href=" /WebApp/Traitement_ModifPassUser"> <i
					class="fa fa-edit"></i>&nbsp;Mot de Passe
			</a></li>
			<li class="divider"></li>
			<li><a href="#ajouter" data-toggle="collapse"><i
					class="fa fa-plus"></i>&nbsp; Ajouter&nbsp;<i
					class="fa fa-chevron-down"></i></a>
				<div class="collapse" id="ajouter">


					<a href=" /WebApp/admin/Traitement_Ajout_BP">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Un
						service</a> <a href=" /WebApp/admin/Ajout_Specialite.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Une
						spécialité</a> <a href=" /WebApp/admin/Ajout_Fonction.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Une
						fonction</a> <a href=" /WebApp/admin/Ajout_Unite.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Une
						unité</a>

				</div></li>
			<security:authorize access="hasRole('ROLE_ADMIN')">
				<li><a href="<spring:url value="/utilisateurs/ajouterUtilisateur"/>"><i
						class="fa fa-plus"></i>&nbsp;Ajouter un utilisateur</a></li>
			</security:authorize>
			<li class="sidebar-brand"><a href=" /WebApp/Accueil">
					<p style="color: #fafafa;">DDR-DAIP</p>

			</a></li>


			<li><a href=" /WebApp/RechercheParMatricule.jsp"><i
					class="fa fa-search"></i>&nbsp;Rechercher</a></li>


			<li class="divider"></li>
			<li><a href=" /WebApp/Traitement_Reporting">&nbsp;Reporting</a>
			</li>
			<li class="divider"></li>



			</li>

			<security:authorize access="isAuthenticated()">
				<li><a href="<spring:url value="/logout"/>"><i
						class="fa fa-sign-out"></i>&nbsp;Déconnexion</a></li>
			</security:authorize>
			
			<security:authorize access="!isAuthenticated()">
				<li><a href="<spring:url value="/login"/>"><i
						class="fa fa-sign-out"></i>&nbsp;Connextion</a></li>
			</security:authorize>
		</ul>
	</div>

	<!-- /#sidebar-wrapper -->

	<div id="page-content-wrapper">
		<div class="container-fluid">
			<tiles:insertAttribute name="body" />



			<br> <br>

			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>