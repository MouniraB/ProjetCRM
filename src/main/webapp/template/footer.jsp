<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <footer id="footer">
    <div class="text-center padder clearfix">
      <p>
        <small>&copy; first 2013, Mobile first web app framework base on Bootstrap</small><br><br>
        <a href="#" class="btn btn-mini btn-circle btn-twitter"><i class="icon-twitter"></i></a>
        <a href="#" class="btn btn-mini btn-circle btn-facebook"><i class="icon-facebook"></i></a>
        <a href="#" class="btn btn-mini btn-circle btn-gplus"><i class="icon-google-plus"></i></a>
      </p>
    </div>
  </footer>
  <a href="#" class="hide slide-nav-block" data-toggle="class:slide-nav slide-nav-left" data-target="body"></a>
  <!-- / footer -->
	<script src="<spring:url value="/js/jquery.min.js"/>"></script>
  <!-- Bootstrap -->
  <script src="<spring:url value="/js/bootstrap.js"/>"></script>
  <!-- app -->
  

  <script src="<spring:url value="/js/app.js" /> "></script>
  <script src="<spring:url value="/js/app.plugin.js"/>"></script>
  <script src="<spring:url value="/js/app.data.js"/>"></script>


  <!-- Sparkline Chart -->
  <script src="<spring:url value="/js/charts/sparkline/jquery.sparkline.min.js"/>"></script>
  <!-- Easy Pie Chart -->
  <script src="<spring:url value="/js/charts/easypiechart/jquery.easy-pie-chart.js"/>"></script>
</body>
</html>