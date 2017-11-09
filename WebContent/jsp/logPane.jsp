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
								<input class="btn btn-danger" style="clear: left; width: 100%; height: 32px; font-size: 13px;" type="submit" name="commit" value="Cria uma nova conta"
								onclick="window.location.href='registroNovo.jsp'"/>
								<div class="dropdown-divider"></div>
							</div>
					</li>
				</ul>