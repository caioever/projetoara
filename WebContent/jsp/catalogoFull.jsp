<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="topoNav.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<header>
		<!-- Add header dps-->
	</header>

	<div class="jumbotron col-md-12 col-sm-12 bg-danger rounded-0">
		<h2 class="display-4 container text-white">Catálogo</h2>
	</div>
	<!-- Inicio Catalogo container-->
	<div class="container my-4">
		
		${msg}

		<div class="row"> <!-- Inicio da row -->
			
			<c:forEach var="doc" items="${ld}">
			<div class="col">
				<div class="card my-4" style="width: 20rem;">
					<img class="card-img-top" src="holder.js/318x180" alt="Card image cap">
					<div class="card-body">
						<h4 class="card-title">${doc.nome}</h4>
						<p class="card-text">${doc.sinopse}</p>
					</div>
					<form name="botao" id="formCadastro" role="form" action="displaydoc.html" method="post">
						<!-- <a name="codigo" id="codigo" value="${doc.codigo}" class="btn btn-danger">Assistir</a> -->
						<input type="radio" id="codigo" name="codigo" value="${doc.codigo}">pesquisar?</input>
						<input type="submit" class="btn btn-danger" value="Assistir" />
					</form>
				</div>
			</div>
			</c:forEach>
			
		</div> <!-- Fim da row -->
	</div><!-- Fim Catalogo container-->

	<!-- <hr class="my-4 col-sm-10" style="background-color: #cecece;">  Divisor -->

	<!-- Inicio RODAPE-->
	<footer>
		<!-- Add footer dps -->
	</footer>

	<!-- O Bootstrap usa esse popper.js -->
	<!-- <script src="popper.js-1.12.3/dist/popper.min.js"> </script>-->
	<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="../js/jquery-validation/jquery.validate.js" type="text/javascript"></script>
	<script src="../js/jquery-maskedinput/src/jquery.maskedinput.js" type="text/javascript"></script>
	<!-- Bootstrap-->
	<script src="../js/bootstrap.min.js"></script>
	<!-- Holder.js-->
	<script src="../js/holder.min.js"></script>
	<!-- Graficos -->
	<script src="../js/Chart.bundle.min.js"></script>
	<script src="http://www.chartjs.org/samples/latest/utils.js"></script>
	<!-- Video header background-->
	<script src="../js/bgVid.js"></script>
	<!-- Nosso JS -->
	<script src="../js/Ara.js"></script>
</body>

</html>
