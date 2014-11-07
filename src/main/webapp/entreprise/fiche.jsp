<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fiche contact</title>

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


			<label class="col col-lg-3 control-label">Nom</label>
			<div class="col col-lg-8">
				<p name="nom">
					<s:property value="entreprise.nom" />
				</p>
			</div>
		</div>
		<div class="row">
			<label class="col col-lg-3 control-label">Raison sociale</label>
			<div class="col col-lg-8">
				<p name="nom">
					<s:property value="entreprise.raison" />
				</p>

			</div>
		</div>

		<div class="row">
			<label class="col col-lg-3 control-label">Adresse</label>
			<div class="col col-lg-8">
				<p name="nom">
					<s:property value="entreprise.adresse" />
				</p>

			</div>
		</div>

		<div class="row">
			<label class="col col-lg-3 control-label">Secteur d'activité</label>
			<div class="col col-lg-8">
				<p name="nom">
					<s:property value="entreprise.secteur" />
				</p>

			</div>
		</div>





	</div>


	<div class="col col-lg-12">
		<section class="panel"> <header class="panel-heading">Affichage
		de la liste <i class="icon-info-sign text-muted" data-toggle="popover"
			data-html="true" data-placement="top"
			data-content="The datagrid use ajax to load the data. please put this file on a server to preview."
			title="" data-trigger="hover" data-original-title="Help"></i> </header>
		<div class="pull-out">
			<table id="MyStretchGrid"
				class="table table-striped datagrid m-b-small">
				<thead>
					<tr>
						<th class="sortable">Nom</th>
						<th class="sortable">Prenom</th>
						<th class="sortable">Mail</th>
						<th class="sortable">Fixe</th>
						<th class="sortable">Mobile</th>
						<th class="sortable">Statut</th>

					</tr>
				</thead>
				<tbody>
					<s:iterator value="entreprise.contacts">
						<tr>
							<td><s:property value="nom" /></td>
							<td><s:property value="prenom" /></td>
							<td><s:property value="mail" /></td>
							<td><s:property value="fixe" /></td>
							<td><s:property value="mobile" /></td>
							<td><s:property value="statut" /></td>

						</tr>
					</s:iterator>

				</tbody>

				<tfoot>
					<tr>
						<th class="row">
							<div class="datagrid-footer-left col col-lg-6 text-center-sm"
								style="display: none;">
								<div class="grid-controls m-t-small">
									<span> <span class="grid-start"></span> - <span
										class="grid-end"></span> of <span class="grid-count"></span>
									</span>
									<div class="select grid-pagesize dropup" data-resize="auto">
										<button data-toggle="dropdown"
											class="btn btn-small btn-white dropdown-toggle">
											<span class="dropdown-label"></span> <span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li data-value="5" data-selected="true"><a href="#">5</a></li>
											<li data-value="10"><a href="#">10</a></li>
											<li data-value="20"><a href="#">20</a></li>
											<li data-value="50"><a href="#">50</a></li>
											<li data-value="100"><a href="#">100</a></li>
										</ul>
									</div>
									<span>Per Page</span>
								</div>
							</div>
							<div
								class="datagrid-footer-right col col-lg-6 text-right text-center-sm"
								style="display: none;">
								<div class="grid-pager">
									<button type="button"
										class="btn btn-small btn-white grid-prevpage">
										<i class="icon-chevron-left"></i>
									</button>
									<span>Page</span>
									<div class="inline">
										<div class="input-group dropdown combobox">
											<input class="input-small" type="text">
											<div class="input-group-btn dropup">
												<button class="btn btn-small btn-white"
													data-toggle="dropdown">
													<i class="caret"></i>
												</button>
												<ul class="dropdown-menu pull-right"></ul>
											</div>
										</div>
									</div>
									<span>of <span class="grid-pages"></span></span>
									<button type="button"
										class="btn btn-small btn-white grid-nextpage">
										<i class="icon-chevron-right"></i>
									</button>
								</div>
							</div>
						</th>
					</tr>
				</tfoot>
			</table>
		</div>
		</section>
	</div>

	</section>
</body>
</html>