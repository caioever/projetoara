package control;

import java.io.IOException;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.entity.Cliente;
import model.entity.Usuario;
import model.persistence.ClienteDao;
import model.persistence.NewUserDao;
import model.persistence.UtilsBanco;

@WebServlet({"/NovoUsuário", "/jsp/cadastro_novo.html"})

public class CadastroNovoUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public CadastroNovoUser() {
        super();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}
	
    /*Método criado em sala  - direcionar a requisição para o método adequado*/
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			//Pegar a URL que foi executada
			String url = request.getServletPath();

			if(url.equalsIgnoreCase("/jsp/cadastro_novo.html")){
				cadNewUser(request, response);
			}else if(url.equalsIgnoreCase("/jsp/profile.html")){
				perfil(request, response);
			}else{
				response.sendRedirect("/");
			}
		}catch(Exception e){ //tratar melhor ?????
			e.printStackTrace();
		}
	}
	//cadastro de usuário
	protected void cadNewUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			/* Resgatar os dados do formulario: formCliente*/
			String nome = request.getParameter("nome");
			String sobrenome = request.getParameter("sobrenome");
			
			String senha = request.getParameter("senha");
			String email = request.getParameter("email");
			
			/* String tipoConta */0 = request.getParameter("tipoConta");
			/* String pathImgPerf */"holder.js/40x40" = request.getParameter("pathImgPerf");
			
			String sexo = request.getParameter("rbsexo");
			String telefone = request.getParameter("telefone");
			String dtNasc = request.getParameter("dtnasc");
			
			/*String lingPref*/"Portugues" = request.getParameter("lingPref");
			
			Usuario usuario = new Usuario();
			
			/* Hospedar os dados do Usuario na Bean Usuario*/
			usuario.setNome(nome);
			usuario.setSobrenome(sobrenome);
			usuario.setEmail(email);
			usuario.setSenha(senha);
			
			//usuario.setTipoConta(tipoConta);
			//usuario.setPathImgPerf(pathImgPerf);
			
			usuario.setSexo(sexo);
			usuario.setTelefone(telefone);
			usuario.setDtNasc(UtilsBanco.converterData(dtNasc));
			
			//usuario.setLingPref(lingPref);

			
			if(new NewUserDao().cadastrar(usuario)){
				/*setar a mensagem de sucesso no request*/
				request.setAttribute("msg", 
				"<div class='alert alert-success'>Usuário cadastrado com sucesso</div>");
			}else{
				/*setar a mensagem de erro no request*/
				request.setAttribute("msg", 
				"<div class='alert alert-danger'>Usuário já possui possui um cadastro no sistema</div>");
			}
		}catch(Exception e){
			e.printStackTrace();
			/*setar a mensagem de erro no request*/
			request.setAttribute("msg", 
					"<div class='alert alert-danger'>Usuário não cadastrado</div>");
		}finally{
			request.getRequestDispatcher("registroNovo.jsp").forward(request, response);
		}
		
	}
	//fim cadastro
	
	//perfilGet
	protected void perfil(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			/* Pegar o cpf digitado na tela */			
			String id = new String(request.getParameter("id"));
			/* Instanciar a classe DaoCliente */
			NewUserDao banco = new NewUserDao();
			/* Acionar o método da classe Dao Cliente que retorna os dados de um cliente a 
			 * partir do CPF do cliente*/
			Usuario usuario = banco.getPerfil(id);
		
			request.setAttribute("UserName", usuario.getNome());
			request.setAttribute("sex", usuario.getSexo());
			request.setAttribute("UserTipe", usuario.getTipoConta());
			request.setAttribute("UserEmail", usuario.getEmail());
			request.getRequestDispatcher("profile.jsp").forward(request, response);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
