<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="layouts/taglib.jsp" %>


<body class="eccp fr">
	<div id="wrapper">

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
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
				<div class="row">
					<div class="well well-lg" id="content">

						<table id="example" class="table table-striped table-bordered">
							<thead>
								<tr>
									
									<th>E-mail</th>
									<th>Nom d'utilisateur</th>
									<th>Operations</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${users}" var="user" varStatus="status">
							<tr>
<%-- 							<td>${user.employe.nom} </td> --%>
							<td>${user.email}</td>
							<td>${user.nomUtilisateur}</td>
							<td><a class=" btn btn-primary" href="<spring:url value="/utilisateurs/supprimer/${user.idUtilisateur}"/>">
									<i class="halflings-icon white eye-open"></i> Supprimer
								</a></td>
							</c:forEach>
							</tr>
								<!-- /.contact-form -->
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div>