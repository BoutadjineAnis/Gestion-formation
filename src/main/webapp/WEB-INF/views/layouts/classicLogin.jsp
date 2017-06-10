
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

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

<body id="login" class="eccp fr" dir="ltr" >
		
		

<div id="page-content-wrapper">
			<div class="container-fluid">
	<tiles:insertAttribute name="body" />
	
	

	<br>
	<br>

		<tiles:insertAttribute name="footer" />
		</div>
		</div>
</body>
</html>