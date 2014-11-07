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

		<div class="row">


			<label class="col col-lg-3 control-label">Prénom</label>
			<div class="col col-lg-8">
				<p name="prenom">
					<s:property value="contact.prenom" />
				</p>
			</div>
		</div>
		<div class="row">
			<label class="col col-lg-3 control-label">Nom</label>
			<div class="col col-lg-8">
				<p>
					<s:property value="contact.nom" />
				</p>

			</div>
		</div>

		<div class="row">
			<label class="col col-lg-3 control-label">Mail</label>
			<div class="col col-lg-8">
				<p>
					<s:property value="contact.mail" />
				</p>

			</div>
		</div>

		<div class="row">
			<label class="col col-lg-3 control-label">Fixe</label>
			<div class="col col-lg-8">
				<p>
					<s:property value="contact.fixe" />
				</p>
			</div>
		</div>
		<div class="row">
			<label class="col col-lg-3 control-label">Mobile</label>
			<div class="col col-lg-8">
				<p>
					<s:property value="contact.mobile" />
				</p>
			</div>
		</div>

		<div class="row">
			<label class="col col-lg-3 control-label">Statut</label>
			<div class="col col-lg-8">
			<s:select list="@fr.treeptik.entity.Statut@values()" name="contact.statut" label="Statut"/>						
			</div>
		</div>

		<div class="row">
			<label class="col col-lg-3 control-label">Entreprise</label>
			<div class="col col-lg-8">
				<p>
					<s:property value="contact.entreprise.nom" />
				</p>
			</div>
		</div>


	</div>


 <section class="comment-list block col">
 			<s:iterator value="contact.echanges">
            <article id="comment-id-1" class="comment-item media arrow-left">
              <a class="pull-left thumb-small avatar"><img src="<spring:url value="/images/avatar.jpg"/>" class="img-circle"></a>
              <section class="media-body panel">
                <header class="panel-heading clearfix">
                  <label class="label bg-info m-l-mini"><s:property value="type"/></label> <span class="text-muted m-l-small pull-right"><i class="icon-time"></i><s:property value="date"/></span>
                </header>
                <div><s:property value="commentaire"/></div>
              </section>
            </article>
           </s:iterator>
	</section>
</body>
</html>