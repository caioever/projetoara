<jsp:include page="topoNav.jsp"></jsp:include>

	<header>
		<!--Nav top-->
		<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="#"><img src="../img/logoAraSmall.svg" width="30" height="30" class="d-inline-block align-top" alt=""> Ara.</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#topBar" aria-controls="topBar" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="topBar">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active">
						<a class="nav-link" href="header">Home <span class="sr-only">(current)</span></a>
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

				<ul class="navbar-nav my-2 my-lg-0">
					<li class="dropdown">
							<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Login
							</button>
							<div class="dropdown-menu dropdown-menu-right" style="padding: 15px; padding-bottom: 0px; width: 300px;">
								<form action="[AÇAO]" method="post" accept-charset="UTF-8">
									<label for="logEmail">Email</label>
									<input type="email" class="form-control" id="logEmail" aria-describedby="emailHelp" placeholder="Digite seu email">

									<label for="logPass">Senha</label>
									<input type="password" class="form-control" id="logPass" placeholder="digite sua senha">
									<small id="emailHelp" class="form-text text-muted">Esqueceu sua senha?</small>
									<label class="form-check-label">
										<input type="checkbox" class="form-check-input">
										Lembrar-se
									</label>

									<input class="btn btn-danger" style="clear: left; width: 100%; height: 32px; font-size: 13px;" type="submit" name="commit" value="Entrar" />
								</form>
								<div class="dropdown-divider"></div>
								<input class="btn btn-danger" style="clear: left; width: 100%; height: 32px; font-size: 13px;" type="submit" name="commit" value="Cria uma nova conta" />
								<div class="dropdown-divider"></div>
							</div>
					</li>
				</ul>

			</div>
		</nav>
		<!--Fim Nav top-->
	</header>

	</br></br></br></br></br>
<div class="row">
<div class="col-xs-1 col-sm-2 col-lg-2"></div>
<div class="col-xs-12 col-sm-12 col-lg-5">
	<div><h2 class="text-left" style="margin-bottom: 10px">Rodrigo Amarante - Tardei</br></h2></div>
	<div class="embed-responsive embed-responsive-4by3">
	    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/fJ2zWRWOp_s"></iframe>
	</div>
</div>
<div class="col-xs-10 col-sm-10 col-lg-3" style="margin-left: 5px">
<h2></br></h2><h4>Sinópse </h4><br>
<div>
<p>
Tardei, tardei, tardei
Mas cheguei, enfim
Pra cada adeus um nó
Cada conta, o fio do rosário que eu
Vim banhar, pra lhe dar

Tardei, tardei, tardei
Só na volta eu vi
Qual senda me levou
Qual me trouxe aqui
Pra encontrar você
Onde está, meu lugar?

Desceu pelo rio
Da terra pro mar
Um fio de prata que me leva

Tardei, tardei, tardei
Que na vinda eu quis
Pela primeira vez
Nunca mais partir
E esperar você
O meu lugar, onde está?

Desceu pelo rio
Da terra pro mar
Um fio de prata que me leva</p>
<br>
</div>
<div class="inform-doc">
<p><b>Diretor:</b> Rodrigo Amarante | <b>Ano:</b> 2014 |  <b>Nota:</b> 5/5 </p>
</div>
<div class="inform-doc">
<p><b>Palavras Chaves:</b></p>
</div>
<div class="text-danger inform-doc"><p>| MPB | Indie | Rock Alternativo | MPB | Indie | Rock Alternativo | MPB | Indie | Rock Alternativo | MPB | Indie | Rock Alternativo | </p></div>

</div>
</div>








	<footer class="rodape-base">

		<div class="rodape-esquerda">

			<div style="width: 20rem;">
				<img class="card-img-top" src="img/logoAraBigWhite.png" alt="Logo">
			</div>

				<p class="rodape-links">
					<a href="#">Home</a>
					·
					<a href="#">Blog</a>
					·
					<a href="#">Pricing</a>
					·
					<a href="#">About</a>
					·
					<a href="#">Faq</a>
					·
					<a href="#">Contact</a>
				</p>

				<p class="rodape-copy">Documentários Ara &copy; 2017 - UVA</p>
			</div>
			<div class="rodape-meio">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>Rua Ibituruna</span> Rio de Janeiro, Brasil</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+55 21 1234 5678</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:support@company.com">support@ara.doc</a></p>
				</div>

			</div>
			<div class="rodape-direita">

				<p class="rodape-texto">
					<span>Sobre nós</span>
					Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
				</p>

				<div class="rodape-ico">

					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>

				</div>

			</div>
	</footer>

	<!-- O Bootstrap usa esse popper.js -->
	<!-- <script src="popper.js-1.12.3/dist/popper.min.js"> </script>-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="js/jquery-validation/jquery.validate.js" type="text/javascript"></script>
	<script src="js/jquery-maskedinput/src/jquery.maskedinput.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/Ara.js"></script>
	<script src="js/bgVid.js"></script>
</body>
