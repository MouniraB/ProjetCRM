<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajout d'un échange</title>

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
		<section class="panel"><s:fielderror /> <s:form class="form-horizontal"
			method="get" data-validate="parsley" action="../contact/addEchangeAction">
			<div class="row">
			
				<label class="col col-lg-3 control-label">Type</label>
				<div class="col col-lg-8">
					<s:textfield name="echange.type" />
				</div>
			</div>
			<div class="row">
				<label class="col col-lg-3 control-label">Date</label>
				<div class="col col-lg-8">
					<s:textfield name="echange.date" />
				</div>
			</div>

			<div class="row">
				<label class="col col-lg-3 control-label">Commentaire</label>
				<div class="col col-lg-8">
					<s:textfield name="echange.commentaire" />
				</div>
			</div>

			<div class="row">

				<label class="col col-lg-3 control-label">Contact</label>

				<div class="col col-lg-4">
<%-- 					<select name="contact.id"> --%>
<!-- 								<option value="-1">Choix du contact</option> -->
<%-- 						<s:iterator id="listContact" value="contacts" var="listCont"> --%>
<%-- 						<s:if test="%{#listContact.id==contact.id}"> --%>
<%-- 								<option value="${listCont.id }" selected="selected">${listCont.prenom }  ${listCont.nom}</option> --%>
<%-- 						</s:if> --%>
<%-- 						<s:else> --%>
<%-- 								<option value="${listCont.id }">${listCont.prenom }  ${listCont.nom}</option> --%>
<%-- 						</s:else> --%>
<%-- 						</s:iterator> --%>
<%-- 					</select> --%>
				<s:select list="contacts" name="contact.id" listKey="id" listValue="%{nom + ' ' + prenom}"></s:select>
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
<jsp:include page="../template/footer.jsp" />