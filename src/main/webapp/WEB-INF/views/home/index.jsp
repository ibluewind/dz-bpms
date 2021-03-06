<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Home Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//mgcrea.github.io/angular-strap/styles/libs.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css"/>
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/angularjs-slider/5.8.7/rzslider.min.css"/>
<link rel="stylesheet" href="<c:url value='/static/css/'/>angular-motion.css"/>
<link rel="stylesheet" href="<c:url value='/static/css/'/>approve.css"/>
</head>
<body ng-app="bpmApp">
	<div class="container-fluid">
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#/">BPMS&nbsp;<span class="small">${user.lastName}${user.firstName}-${user.deptPositions[0].deptName}</span></a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="#/"/>Link <span class="sr-only">(current)</span></a></li>
		        <li><a href="#/">Link</a></li>
		        <li class="dropdown">
		          <a href="#/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">작업<span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="#/task_list">작업목록</a></li>
		            <li><a href="#/regist_task/-9999">작업등록</a></li>
		            <li class="divider"></li>
		            <li><a href="#/expect_task">예정된 작업</a></li>
		            <li class="divider"></li>
		            <li class="bg-danger"><a href="#/delayed_task">지연된 작업</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href=#/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">결재함<span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="#/list_app">결재등록</a></li>
		            <li><a href="#/undecide_app">미결함</a></li>
		            <li><a href="#/defer_app">보류함</a></li>
		            <li><a href="#/decided_app">기결함</a></li>
		            <li class="divider"></li>
		            <li><a href="#/completed_app">완료함</a></li>
		            <li class="divider"></li>
		            <li><a href="#/expect_app">예정함</a></li>
		            <li class="divider"></li>
		            <li><a href="#/man_appline">결재라인관리</a></li>
		          </ul>
		        </li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		      	<li><a href="<c:url value="/logout"/>">Logout</a></li>
		      	<sec:authorize access="hasRole('ADMIN') and hasRole('DBA')">
		        <li><a href="<c:url value="/admin"/>">Admin</a></li>
		        </sec:authorize>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
		<div id="work-area" ng-view></div>
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-route.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-cookies.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-sanitize.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-animate.min.js"></script>
<script src="//mgcrea.github.io/angular-strap/dist/angular-strap.js" data-semver="v2.3.8"></script>
<script src="//mgcrea.github.io/angular-strap/dist/angular-strap.tpl.js" data-semver="v2.3.8"></script>
<script src="<c:url value="/static/js/angular-file-upload.js"/>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
<script src="<c:url value="/static/js/"/>ngJsTree.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angularjs-slider/5.8.7/rzslider.min.js"></script>
<script>
	var company = {id: '${company.id}', name: '${company.name}', ceo: '${company.ceo}'};
</script>
<script src="<c:url value="/static/js/app.js"/>"></script>
<script src="<c:url value="/static/js/common_tree.js"/>"></script>
<script src="<c:url value="/static/js/modal_window.js"/>"></script>
<script src="<c:url value="/static/js/admin/user/app_service.js"/>"></script>
<script src="<c:url value="/static/js/home/app_configure.js"/>"></script>
<script src="<c:url value="/static/js/home/dashboard_controller.js"/>"></script>
<script src="<c:url value="/static/js/home/task_constant.js"/>"></script>
<script src="<c:url value="/static/js/home/task_service.js"/>"></script>
<script src="<c:url value="/static/js/home/task_controller.js"/>"></script>
<script src="<c:url value="/static/js/home/approve_constant.js"/>"></script>
<script src="<c:url value="/static/js/home/approve_service.js"/>"></script>
<script src="<c:url value="/static/js/home/approve_controller.js"/>"></script>
</body>
</html>