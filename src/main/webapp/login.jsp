<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="template/header.jsp" />





<section id="content">
	<div class="row">
		<div class="col col-lg-4 col-offset-4 m-t-large">
			<section class="panel">
				<header class="panel-heading text-center"> Sign in </header>
				<form action="j_spring_security_check" class="padder">
					<div class="block">
						<label class="control-label">Username</label> <input type="text"
							id="identifiant" name="j_username" />
					</div>
					<div class="block">
						<label class="control-label">Password</label> <input
							type="password" id="inputPassword" placeholder="Password" name="j_password">
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"> Keep me logged in
						</label>
					</div>
					<a href="#" class="pull-right m-t-mini"><small>Forgot
							password?</small></a>
					<button type="submit" class="btn btn-info">Sign in</button>
					<div class="line line-dashed"></div>
					<a href="#" class="btn btn-facebook btn-block m-b-small"><i
						class="icon-facebook pull-left"></i>Sign in with Facebook</a> <a
						href="#" class="btn btn-twitter btn-block"><i
						class="icon-twitter pull-left"></i>Sign in with Twitter</a>
					<div class="line line-dashed"></div>
					<p class="text-muted text-center">
						<small>Do not have an account?</small>
					</p>
					<a href="signup.html" class="btn btn-white btn-block">Create an
						account</a>
				</form>
			</section>
		</div>
	</div>
</section>


<jsp:include page="template/footer.jsp" />