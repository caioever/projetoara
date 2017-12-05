<jsp:include page="topoNav.jsp"></jsp:include>

	<header>
		<div class="jumbotron col-md-12 col-sm-12 bg-danger rounded-0">
			<h2 class="display-4 container text-white">Painel de controle</h2>
		</div>
	</header>
	<div class="container my-4 rounded">
		<div class="row">
	<!-- Inicio Side Menu-->
			<div class="nav flex-column nav-pills col-2 menuAdmin" id="v-pills-tab" style="padding-right: 0px;" role="tablist">
	 			<a class="nav-link text-dark active semSmooth" id="v-pills-dash-tab" data-toggle="pill" href="#v-pills-dash" role="tab" aria-controls="v-pills-dash" aria-expanded="true">Dashboard</a>
	 			<a class="nav-link text-dark semSmooth" id="v-pills-perf-tab" data-toggle="pill" href="#v-pills-perf" role="tab" aria-controls="v-pills-perf" aria-expanded="true">Perfil</a>
				<a class="nav-link text-dark semSmooth" id="v-pills-admUser-tab" data-toggle="pill" href="#v-pills-admUser" role="tab" aria-controls="v-pills-admUser" aria-expanded="true">Gerenciar usu�rios</a>
				<a class="nav-link text-dark semSmooth" id="v-pills-admDoc-tab" data-toggle="pill" href="#v-pills-admDoc" role="tab" aria-controls="v-pills-admDoc" aria-expanded="true">Gerenciar Document�rios</a>
	 			<a class="nav-link text-dark semSmooth" id="v-pills-newDoc-tab" data-toggle="pill" href="#v-pills-newDoc" role="tab" aria-controls="v-pills-newDoc" aria-expanded="true">Novo Document�rio</a>
				<hr class="separador">
			</div>
	<!-- fim Side menu-->

	<!-- Inicio conteudoAdminPainel-->
			<div class="tab-content container col-8" id="v-pills-tabContent">

				<!-- Inicio -Dashboard  -->
				<div class="tab-pane fade show active" id="v-pills-dash" role="tabpanel" aria-labelledby="v-pills-dash-tab">
					<h1 class="display-4">Dashboard: </h1>

					<hr class="separador">

					<div class="canvas-container my-4 row">
						<div style="width: 50%">
							<canvas id="hours"></canvas>
						</div>
						<div style="width: 50%">
							<canvas id="grafico2"></canvas>
						</div>
					</div>
					<div class="canvas-container my-4 row">
						<div class="mx-auto" style="width: 70%">
							<canvas id="grafico3"></canvas>
						</div>
					</div>

				</div>
				<!-- Fim -Dashboard -->

				<jsp:include page="profile.jsp"></jsp:include><!-- Pill perfil -->

				<!-- inicio -Gerenciador_de_usuario -->
	  		<div class="tab-pane fade" id="v-pills-admUser" role="tabpanel" aria-labelledby="v-pills-admUser-tab">
					<h1 class="display-4">Usu�rios: </h1>
					<hr class="separador">

					<ul class="list-group boxAdmin">
	  				<li class="list-group-item">
							<img src="holder.js/40x40" alt="..." class="rounded mr-2">
							Fulano
							<div class="adminOPT float-right">
								<button type="button" class="btn btn-info">Editar</button>
								<button type="button" class="btn btn-danger">Apagar</button>
							</div>
						</li>

	  				<li class="list-group-item">
							<img src="holder.js/40x40" alt="..." class="rounded mr-2">
							Caio Everest
							<div class="adminOPT float-right">
								<button type="button" class="btn btn-info">Editar</button>
								<button type="button" class="btn btn-danger">Apagar</button>
							</div>
						</li>
	  				<li class="list-group-item">
							<img src="holder.js/40x40" alt="..." class="rounded mr-2">
							Elias Fontes
							<div class="adminOPT float-right">
								<button type="button" class="btn btn-info">Editar</button>
								<button type="button" class="btn btn-danger">Apagar</button>
							</div>
						</li>
	  				<li class="list-group-item">
							<img src="holder.js/40x40" alt="..." class="rounded mr-2">
							Carlos
							<div class="adminOPT float-right">
								<button type="button" class="btn btn-info">Editar</button>
								<button type="button" class="btn btn-danger">Apagar</button>
							</div>
						</li>
					</ul>
				</div>
				<!-- Fim -Gerenciador_de_usuario -->

				<!-- Inicio -Gerenciador_de_Documentario -->
				<div class="tab-pane fade" id="v-pills-admDoc" role="tabpanel" aria-labelledby="v-pills-admDoc-tab">
					<h1 class="display-4">Document�rios: </h1>
					<hr class="separador">

					<div class="list-group boxAdmin">
  					<a class="list-group-item flex-column align-items-start">
    					<div class="d-flex w-100 justify-content-between">
      					<h5 class="mb-1">Bolo de Lim�o | Noriko Arai</h5>
      					<small class="text-muted">3 days ago</small>
    					</div>
    					<p class="mb-1">Meet Todai Robot, an AI project that performed in the top 20 percent of students on the entrance exam for the University of Tokyo -- without actually understanding a thing. While it's not matriculating anytime soon</p>
							<div class="adminOPT">
								<button type="button" class="btn btn-info">Editar</button>
								<button type="button" class="btn btn-danger">Apagar</button>
							</div>
  					</a>

  					<a class="list-group-item flex-column align-items-start">
    					<div class="d-flex w-100 justify-content-between">
      					<h5 class="mb-1">Can a robot pass a university entrance exam? | Noriko Arai</h5>
      					<small class="text-muted">3 days ago</small>
    					</div>
    					<p class="mb-1">Meet Todai Robot, an AI project that performed in the top 20 percent of students on the entrance exam for the University of Tokyo -- without actually understanding a thing. While it's not matriculating anytime soon</p>
							<div class="adminOPT">
								<button type="button" class="btn btn-info">Editar</button>
								<button type="button" class="btn btn-danger">Apagar</button>
							</div>
  					</a>

  					<a class="list-group-item flex-column align-items-start">
    					<div class="d-flex w-100 justify-content-between">
      						<h5 class="mb-1">Can a robot pass a university entrance exam? | Noriko Arai</h5>
      						<small class="text-muted">3 days ago</small>
    					</div>
    					<p class="mb-1">Meet Todai Robot, an AI project that performed in the top 20 percent of students on the entrance exam for the University of Tokyo -- without actually understanding a thing. While it's not matriculating anytime soon</p>
							<div class="adminOPT">
								<button type="button" class="btn btn-info">Editar</button>
								<button type="button" class="btn btn-danger">Apagar</button>
							</div>
  					</a>
					</div>
				</div>
				<!-- Fim -Gerenciador_de_Documentario -->

				<!-- Inicio -Novo_documentario -->
	  		<div class="tab-pane fade" id="v-pills-newDoc" role="tabpanel" aria-labelledby="v-pills-newDoc-tab">
					<h1 class="display-4">Novo document�rio: </h1>
					<hr class="separador">
					<form name="formNewDoc" id="formNewDoc" action="cadastrarDoc.html" method="post">
						<!-- Inicio primeira linha -->
						<div class="form-group">
							<label for="nomeDoc">Nome do document�rio*:</label>
							<input class="form-control form-control-lg" id="nomeDoc" name="nomeDoc" type="text" placeholder="TED talk etc">
							<span id="erro_nomeDoc" class="erroFormDoc"></span>
						</div>
						<!-- fim primeira linha-->

						<!-- Inicio segunda linha-->
						<div class="form-row">
							<div class="form-group col-md-6 col-sm-6">
								<label for="estudioDoc">Estudio*:</label>
								<input type="text" class="form-control" id="estudioDoc" name="estudioDoc">
								<span id="erro_estudioDoc" class="erroFormDoc"></span>
							</div>
							<div class="form-group col-md-6 col-sm-6">
								<label for="autorDoc">Autor*:</label>
								<input type="text" class="form-control" id="autorDoc" name="autorDoc">
								<span id="erro_autorDoc" class="erroFormDoc"></span>
							</div>
						</div>
						<!-- fim segunda linha-->

						<!-- Inicio terceira linha-->
						<div class="form-row">
							<div class="form-group col-md-6 col-sm-6">
								<label for="dateDoc">Ano*:</label>
								<input type="text" class="form-control" id="dateDoc" name="dateDoc">
								<span id="erro_dateDoc" class="erroFormDoc"></span>
							</div>
							<div class="form-group col-md-6 col-sm-6">
								<label for="generoDoc">Genero*:</label>
								<select class="form-control" name="generoDoc" id="generoDoc">
									<option value="">Selecione uma op��o</option>
									<option value="ted_talk">Ted</option>
									<option value="universo">Universo</option>
									<option value="historia">Historia</option>
									<option value="sociedade">Sociedade</option>
									<option value="geografia">Geografia</option>
									<option value="politica">Politica</option>
									<option value="selvagem">Selvagem</option>
									<option value="eco">Ecologia</option>
									<option value="tecnologia">Tecnologia</option>
								</select>
								<span id="erro_generoDoc" class="erroFormDoc"></span>
							</div>
						</div>
						<!-- fim terceira linha-->

						<!-- Inicio quarta linha-->
						<div class="form-row">
							<div class="form-group col-md-6 col-sm-6">
								<label for="idiomaDoc">idioma*:</label>
								<select class="form-control" name="idiomaDoc" id="idiomaDoc">
									<option value="">Selecione uma op��o</option>
									<option value="portugues">Portugues</option>
									<option value="ingles">Ingles</option>
									<option value="alemao">Alem�o</option>
									<option value="frances">Frances</option>
									<option value="japones">Japones</option>
									<option value="russo">Russo</option>
								</select>
								<span id="erro_idiomaDoc" class="erroFormDoc"></span>
							</div>
							<div class="form-check col-md-6 col-sm-6">
								<span id="elsePort" name="elsePort">
									<label for="legDoc">Possui Legenda*:</label></br>
									<label class="form-check-label"> <input class="form-check-input" type="radio" name="legDoc" id="legDoc" value="legendado" checked>Sim </label>
									<label class="form-check-label"> <input class="form-check-input" type="radio" name="legDoc" id="legDoc" value="SEM_legenda" checked>N�o </label>
								</span>
								<span id="erro_dubDoc" class="erroFormDoc"></span>
							</div>
						</div>
						<!-- fim quarta linha-->

						<!-- Inicio quinta linha-->
						<div class="form-group">
							<label for="sinopseDoc">Sinopse*:</label>
							<textarea class="form-control" id="sinopseDoc" name="sinopseDoc" rows="9"></textarea>
							<span id="erro_sinopseDoc" class="erroFormDoc"></span>
						</div>
						<!-- fim quinta linha-->

						<!-- Inicio sexta e s�tima linha-->
						<div class="form-group">
							<label for="thumbDoc">Thumbnail*:</label>
							<input type="file" class="form-control-file" id="thumbDoc" name="thumbDoc">
							<span id="erro_thumbDoc" class="erroFormDoc"></span>
						</div>
						<div class="form-group">
							<label for="linkDoc">link do document�rio*:</label>
							<input type="text" class="form-control" id="linkDoc" name="linkDoc">
							<span id="erro_linkDoc" class="erroFormDoc"></span>
						</div>
						<!-- fim sexta e s�tima linha-->

						<!-- Bot�es-->
						<input type="submit" id="enviaDoc" value="Enviar" class="btn btn-danger"/>
						<input type="button" class="btn btn-outline-secondary btlimpar" value="Limpar" />
					</form>
				</div>
				<!-- Fim -Novo_documentario -->
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
