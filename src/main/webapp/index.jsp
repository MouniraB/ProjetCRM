<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajout d'un contact</title>

<spring:url value="/css/bootstrap.css" var="bootstrap" />
<spring:url value="/css/font-awesome.min.css" var="font" />
<spring:url value="/css/style.css" var="style" />
<spring:url value="/css/plugin.css" var="plugin" />


<link rel="stylesheet" href="${bootstrap }">
<link rel="stylesheet" href="${font }">
<link rel="stylesheet" href="${style }">
<link rel="stylesheet" href="${plugin}">
</head>
<jsp:include page="template/header.jsp" />
<body>


	<section id="content">
		<section class="main"></section>
	</section>
	
<jsp:include page="template/footer.jsp" />
	
