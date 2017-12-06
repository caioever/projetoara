<jsp:include page="topoNav.jsp"></jsp:include>
</br></br></br>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="row">
	${msg}
	<div class="col-xs-1 col-sm-2 col-lg-2"></div>
	<div class="col-xs-12 col-sm-12 col-lg-5">
		<div><h2 class="text-left" style="margin-bottom: 10px">${d.nome}</br></h2></div>
		<div class="embed-responsive embed-responsive-4by3">
		    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/${d.url_youtube}"></iframe>
		</div>
	</div>
	<div class="col-xs-10 col-sm-10 col-lg-3" style="margin-left: 5px">
		<h2></br></h2><h4>Sinópse:</h4>
		<tr>
			<td><p>${d.sinopse}</p></td>
		</tr>
		<hr class="separador">
		<div class="inform-doc">
			<p><b>Diretor:</b> ${d.diretor} | <b>Ano:</b> ${d.ano} |  <b>Nota:</b> 5/5 </p>
		</div>
		<hr class="separador">
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
