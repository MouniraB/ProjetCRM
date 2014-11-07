<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajout d'une entreprise</title>

<spring:url value="/css/bootstrap.css" var="bootstrap" />
<spring:url value="/css/font-awesome.min.css" var="font" />
<spring:url value="/css/style.css" var="style" />
<spring:url value="/css/plugin.css" var="plugin" />


<link rel="stylesheet" href="${bootstrap }">
<link rel="stylesheet" href="${font }">
<link rel="stylesheet" href="${style }">
<link rel="stylesheet" href="${plugin}">
</head>
<jsp:include page="../template/header.jsp" />
<body>
	<section id="content">
	<div class="col col-lg-6">
		<section class="panel"> <s:fielderror />  <s:form
			class="form-horizontal" method="get" data-validate="parsley"
			action="addAction">
			<div class="row">

				<s:hidden name="entreprise.id" />

				<label class="col col-lg-3 control-label">Nom</label>
				<div class="col col-lg-8">
					<s:textfield name="entreprise.nom" />
				</div>
			</div>
			<div class="row">
				<label class="col col-lg-3 control-label">Raison sociale</label>
				<div class="col col-lg-8">
					<s:textfield name="entreprise.raison" />
				</div>
			</div>

			<div class="row">
				<label class="col col-lg-3 control-label">Adresse</label>
				<div class="col col-lg-8">
					<s:textfield name="entreprise.adresse" />
				</div>
			</div>

			<div class="row">
				<label class="col col-lg-3 control-label">Secteur d'activité</label>
				<div class="col col-lg-8">
					<s:textfield name="entreprise.secteur" />
				</div>
			</div>


			<div class="row">
				<div class="col col-lg-9 col-offset-3">
					<button type="submit" class="btn btn-white">Cancel</button>
					<button type="submit" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</s:form> </section>
	</div>
	</section>
</body>
</html>