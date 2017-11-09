<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="keywords" content="documentario, estudo, video, pesquisa, ciencia, universidade" />

	<title>Ara.Documentários</title>

	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../css/bgVid.css" />

	<link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>


<body>
		<!--Nav top-->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="#"><object type="image/svg+xml" data="../img/logoAraSmall.svg" width="30" height="30" class="d-inline-block align-top" alt=""></object> Ara.</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#topBar" aria-controls="topBar" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="topBar">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active">
						<a class="nav-link" href="#header">Home <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#catalogo">Catálogo</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#sobreNos">Sobre</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#contato">Contato</a>
					</li>
				</ul>

				<jsp:include page="logPane.jsp"></jsp:include>

			</div>
		</nav>
		<!--Fim Nav top-->