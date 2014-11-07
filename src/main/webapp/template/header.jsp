<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>
	<!-- header -->
	<header id="header" class="navbar navbar-sm">
		<ul class="nav navbar-nav navbar-avatar pull-right">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown"> <span class="hidden-sm-only">Mika
						Sokeil</span> <span class="thumb-small avatar inline"><img
						src="<spring:url value="/images/avatar.jpg"/>" alt="Mika Sokeil"
						class="img-circle"></span> 
			</a></li>
		</ul>
		<a class="navbar-brand" href="<spring:url value="/index.jsp"/>">CRM</a>
		<button type="button"
			class="btn btn-link pull-left nav-toggle hidden-lg"
			data-toggle="class:slide-nav slide-nav-left" data-target="body">
			<i class="icon-reorder icon-xlarge text-default"></i>
		</button>

		<form class="navbar-form pull-left shift" action=""
			data-toggle="shift:appendTo" data-target=".nav-primary">
			<i class="icon-search text-muted"></i> <input type="text"
				class="input-small" placeholder="Search">
		</form>
	</header>
	<!-- / header -->
	<!-- nav -->
	<nav id="nav" class="nav-primary visible-lg nav-vertical">
		<ul class="nav" data-spy="affix" data-offset-top="50">
			<li class="dropdown-submenu"><a
				href="<spring:url value="/entreprise/listAction" />"><i
					class="icon-list icon-xlarge"></i>Entreprises</a></li>
			<li class="active"><a
				href="<spring:url value="/contact/listActionProspect" />"><i
					class="icon-list icon-xlarge"></i>Prospects</a></li>
			<li class="dropdown-submenu"><a
				href="<spring:url value="/contact/listActionClient" /> "><i
					class="icon-list icon-xlarge"></i>Clients</a></li>
			<li class="dropdown-submenu"><a
				href="<spring:url value="/contact/listActionContact" />"><i
					class="icon-list icon-xlarge"></i>Contacts</a></li>
					
						<li class="dropdown-submenu"><a
				href="<spring:url value="/contact/initAddEchangeAction" />"><i
					class="icon-list icon-xlarge"></i>Echanges</a></li>		
		</ul>
	</nav>
	<!-- / nav -->