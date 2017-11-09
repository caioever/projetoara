<jsp:include page="topoNav.jsp"></jsp:include>

	<div class="jumbotron col-md-12 col-sm-12 bg-danger rounded-0">
		<h2 class="display-4 container text-white">Cadastro de Usuário</h2>
	</div>

	<form name="formCadastro" id="formCadastro" onsubmit="return validarUsuario(this)">
		<fieldset class="container my-4">
			<legend class="control-label"> Dados do Usuário </legend>

			<div class="row">
				<div class="form-group col-md-6 col-sm-6">
					<label for="nome">Nome*:</label>
					<input type="text" name="nome" id="nome" class="form-control" onblur="validarNome(this)"/>
				</div>

				<div class="form-group col-md-6 col-sm-6">
					<label for="sobrenome">Sobrenome*:</label>
					<input type="text" name="sobrenome" id="sobrenome" class="form-control" maxlength="15" size="40" onblur="validarSobrenome(this)"/>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-6 col-sm-6">
					<label for="senha">Senha*:</label>
					<input type="password" name="senha" id="senha" class="form-control" maxlength="30" size="40" onblur="validarSenha(this)"/>
				</div>

				<div class="form-group col-md-6 col-sm-6">
					<label for="confirmaSenha">Confirmar Senha*:</label>
					<input type="password" name="confirmaSenha" id="confirmaSenha" class="form-control" maxlength="30" size="40" onblur="validarconfirmaSenha(this)"/>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-6 col-sm-6">
					<label for="email">Email*:</label>
					<input type="email" name="email" id="email" class="form-control" maxlength="50" size="40" onblur="validarEmail(this)"/>
				</div>

				<div class="form-group col-md-6 col-sm-6">
					<label for="sexo">Sexo*:</label>
					<div class="form-check form-check">
						<label class="form-check-label">
							<input class="form-check-input" type="radio" class="form-control" name="rbsexo" value="S" checked="checked" />Masculino
						</label>
						<label class="form-check-label">
							<input class="form-check-input" type="radio" class="form-control" name="rbsexo" value="N" />Feminino
						</label>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-6 col-sm-6">
					<label for="foneContato">Telefone*:</label>
					<input type="text" name="telefone" class="form-control" id="foneContato" maxlength="13" size="40" onblur="validarTelefone(this)"/>
				</div>

				<div class="form-group col-md-6 col-sm-6">
					<label for="dataNascimento">Data de Nascimento*:</label>
					<input type="date" name="dataNascimento" class="form-control" maxlength="8" size="40" onblur="validardataNascimento(this)"/>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-6 col-sm-6">
					<label for="preferencia">Língua de Preferência: </label>
					<select class="form-control" name="preferencia" id="preferencia">
						<option value="">Selecione uma opção</option>
						<option value="portugues">Português</option>
						<option value="ingles">Inglês</option>
						<option value="frances">Francês</option>
						<option value="alemao">Alemão</option>
						<option value="semPreferencia">Sem Preferência</option>
					</select>
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col-md-12 col-sm-12">
					<input type="submit" class="btn btn-danger" value="Enviar" />
					<input type="button" value="Voltar" class="btn btn-outline-secondary" onclick="window.location.href='../index.html'"  />
				</div>
			</div>

		</fieldset>
	</form>
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
