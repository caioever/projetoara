<jsp:include page="topoNav.jsp"></jsp:include>

	<div class="jumbotron col-md-12 col-sm-12 bg-danger rounded-0">
		<h2 class="display-4 container text-white">Perfil</h2>
	</div>

	<div class="container my-4 rounded">
		<div class="row">
	<!-- Inicio Side Menu-->
			<div class="nav flex-column nav-pills col-2 menuAdmin" id="v-pills-tab" style="padding-right: 0px;" role="tablist">
	 			<a class="nav-link text-dark semSmooth  active " id="v-pills-perf-tab" data-toggle="pill" href="#v-pills-perf" role="tab" aria-controls="v-pills-perf" aria-expanded="true">Perfil</a>
				<a class="nav-link text-dark semSmooth" id="v-pills-fav-tab" data-toggle="pill" href="#v-pills-fav" role="tab" aria-controls="v-pills-fav" aria-expanded="true">Lista de favoritos</a>
				<hr class="separador">
			</div>
	<!-- fim Side menu-->

	<!-- Inicio conteudoAdminPainel-->
			<div class="tab-content container col-8" id="v-pills-tabContent">

			<jsp:include page="profile.jsp"></jsp:include><!-- Pill perfil -->

				<!-- Inicio -Favoritos -->
				<div class="tab-pane fade" id="v-pills-fav" role="tabpanel" aria-labelledby="v-pills-fav-tab">
					<h1 class="display-4">Documentários: </h1>
					<hr class="separador">

					<div class="list-group boxAdmin">
  					<a class="list-group-item flex-column align-items-start">
    					<div class="d-flex w-100 justify-content-between">
      					<h5 class="mb-1">Bolo de Limão | Noriko Arai</h5>
    					</div>
    					<p class="mb-1">Meet Todai Robot, an AI project that performed in the top 20 percent of students on the entrance exam for the University of Tokyo -- without actually understanding a thing. While it's not matriculating anytime soon</p>
							<div class="adminOPT">
								<button type="button" class="btn btn-info">Visualizar</button>
							</div>
  					</a>

  					<a class="list-group-item flex-column align-items-start">
    					<div class="d-flex w-100 justify-content-between">
      					<h5 class="mb-1">Can a robot pass a university entrance exam? | Noriko Arai</h5>
    					</div>
    					<p class="mb-1">Meet Todai Robot, an AI project that performed in the top 20 percent of students on the entrance exam for the University of Tokyo -- without actually understanding a thing. While it's not matriculating anytime soon</p>
							<div class="adminOPT">

								<button type="button" class="btn btn-info">Visualizar</button>
							</div>
  					</a>

  					<a class="list-group-item flex-column align-items-start">
    					<div class="d-flex w-100 justify-content-between">
      						<h5 class="mb-1">Can a robot pass a university entrance exam? | Noriko Arai</h5>
    					</div>
    					<p class="mb-1">Meet Todai Robot, an AI project that performed in the top 20 percent of students on the entrance exam for the University of Tokyo -- without actually understanding a thing. While it's not matriculating anytime soon</p>
							<div class="adminOPT">
								<button type="button" class="btn btn-info">Visualizar</button>
							</div>
  					</a>
					</div>
				</div>
				<!-- Fim -Favoritos -->
			</div>
		</div>
	</div>
	<!-- Fim conteudoAdminPainel-->

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
