<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Bootstrap Admin Theme v3</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="<c:url value="static/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
    <!-- styles -->
    <link href="<c:url value="static/css/styles.css" />" rel="stylesheet">
    <link href="<c:url value="/static/css/font-awesome.min.css" />" rel="stylesheet">
    <script src="https://code.jquery.com/jquery.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular-route.min.js"></script>
    
	 <!-- TouchSpin -->
  	<link href="<c:url value='/static/css/jquery.bootstrap-touchspin.min.css' />" rel="stylesheet">
  
  	<!-- TouchSpin -->
    <script src="<c:url value='/static/js/jquery.bootstrap-touchspin.min.js' />"></script>
    

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body ng-app="myApp" ng-controller="myController">
  	<div class="header">
	     <div class="container">
	        <div class="row">
	           <div class="col-md-5">
				  
	              <!-- Logo -->
	              <div class="logo">
	                 <h1><a href="index.html">E-Commerce</a></h1>
	              </div>
	           </div>
	           <div class="col-md-5">
	              <div class="row">
	                <div class="col-lg-12">
	                  <div class="input-group form">
	                       <input type="text" class="form-control" placeholder="Search...">
	                       <span class="input-group-btn">
	                         <button class="btn btn-primary" type="button">Search</button>
	                       </span>
	                  </div>
	                </div>
	              </div>
	           </div>
	           <div class="col-md-2">
	              <div class="navbar navbar-inverse" role="banner">
	                  <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
	                    <ul class="nav navbar-nav">
	                      <li class="dropdown">
	                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Account <b class="caret"></b></a>
	                        <ul class="dropdown-menu animated fadeInUp">
	                          <li><a href="/">Profile</a></li>
	                          <li><a href="login.html">Logout</a></li>
	                        </ul>
	                      </li>
	                    </ul>
	                  </nav>
	              </div>
	           </div>
	        </div>
	     </div>
	</div>
	<div class="page-content">
    	<div class="row">
    			  	<div class="row" id="cartForm">
		  <div class="col-md-3">
		  	<div class="sidebar content-box" style="display: block;">
                <ul class="nav">
                    <!-- Main menu -->
                    <li class="current"><a href="<c:url value="/"/>"><i class="fa fa-opencart fa-3"></i> My Cart</a></li>
                    <li><a href="<c:url value="/form-product"/>"><i class="glyphicon glyphicon-inbox"></i> Product Register</a></li>
                </ul>
             </div>
		  </div>
	