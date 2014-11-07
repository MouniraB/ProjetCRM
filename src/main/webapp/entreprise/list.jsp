<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Liste</title>

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
<section id="content">
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
					<th>
						<div class="row">
							<div class="col col-lg-8">
								<div class="select filter m-b-small m-t-small"
									data-resize="auto">
									<button data-toggle="dropdown"
										class="btn btn-small btn-white dropdown-toggle">
										<span class="dropdown-label"></span> <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li data-value="all" data-selected="true"><a href="#">All</a></li>
										<li data-value="lt5m"><a href="#">Population &lt; 5M</a></li>
										<li data-value="gte5m"><a href="#">Population &gt;=
												5M</a></li>
									</ul>
								</div>
							</div>
							<div class="col col-lg-4">
								<div class="input-group search datagrid-search m-t-small">
									<input type="text" class="input-small" placeholder="Search">
									<div class="input-group-btn">
										<button class="btn btn-white btn-small">
											<i class="icon-search"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</th>
				</tr>
				<tr>
					<th></th>
					<th class="sortable">Nom</th>
					<th class="sortable">Raison sociale</th>
					<th class="sortable">Adresse</th>
					<th class="sortable">Secteur d'activité</th>
					<th class="sortable">Edit</th>
					<th class="sortable">Supprimer</th>

				</tr>
			</thead>
			<tbody>
				<s:iterator value="entreprises">
					<tr>
						<td><s:url action="ficheAction" var="urlFiche">
								<s:param name="id">
									<s:property value="id" />
								</s:param>
							</s:url> <a href="${urlFiche}"><i class="icon-eye-open"></i></a></td>
							
						<td><s:property value="nom" /></td>
						<td><s:property value="raison" /></td>
						<td><s:property value="adresse" /></td>
						<td><s:property value="secteur" /></td>

						<td><s:url action="initUpdateAction" var="urlInitUpdate">
								<s:param name="id">
									<s:property value="id" />
								</s:param>
							</s:url> <a href="${urlInitUpdate}"><i class="icon-pencil"></i></a></td>


						<td><s:url action="deleteAction" var="urlDelete">
								<s:param name="id">
									<s:property value="id" />
								</s:param>
							</s:url> <a href="${urlDelete}"><i class="icon-trash"></i></a></td>
					</tr>
				</s:iterator>
				<tr>
					<td><a href="add.jsp" class="btn btn-white">Nouveau</a></td>
				</tr>

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
<jsp:include page="../template/footer.jsp" />
