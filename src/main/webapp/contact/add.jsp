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
<jsp:include page="../template/header.jsp" />
<body>
	<section id="content">
	<div class="col col-lg-6">
		<section class="panel"> <s:form class="form-horizontal"
			method="get" data-validate="parsley" action="addAction">
			<div class="row">

				<s:hidden name="contact.id" />

				<label class="col col-lg-3 control-label">Prenom</label>
				<div class="col col-lg-8">
					<s:textfield name="contact.prenom" />
				</div>
			</div>
			<div class="row">
				<label class="col col-lg-3 control-label">Nom</label>
				<div class="col col-lg-8">
					<s:textfield name="contact.nom" />
				</div>
			</div>

			<div class="row">
				<label class="col col-lg-3 control-label">Email</label>
				<div class="col col-lg-8">
					<s:textfield name="contact.mail" />
				</div>
			</div>

			<div class="row">
				<label class="col col-lg-3 control-label">Fixe</label>
				<div class="col col-lg-8">
					<s:textfield name="contact.fixe" />
				</div>
			</div>


			<div class="row">
				<label class="col col-lg-3 control-label">Mobile</label>
				<div class="col col-lg-8">
					<s:textfield name="contact.mobile" />
				</div>
			</div>

			<div class="row">
				<label class="col col-lg-3 control-label">Entreprise</label>
				<div class="col col-lg-4">
					<select name="entreprise.id">
						<option value="-1">Choix de l'entreprise</option>
						<s:iterator id="listEnt" value="entreprises" var="listEnt">
							<s:if test="%{#listEnt.id==contact.entreprise.id}">
								<option value="${listEnt.id }" selected="selected">${listEnt.nom }</option>
							</s:if>
							<s:else>
								<option value="${listEnt.id }">${listEnt.nom }</option>
							</s:else>
						</s:iterator>
					</select>
				</div>
			</div>


			<div class="row">
				<s:label cssClass="col col-lg-3 control-label" value="Statut"/>
				<div class="col col-lg-4">

					<s:select list="@fr.treeptik.entity.Statut@values()"
						name="contact.statut"  />
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