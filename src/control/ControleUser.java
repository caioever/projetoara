package control;

import java.io.IOException;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.entity.Usuario;
import model.persistence.UserDao;
import model.persistence.UtilsBanco;

@WebServlet({"/ControlePainel", "/jsp/cadUser.html"})

public class ControleUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public ControleUser() {
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

			if(url.equalsIgnoreCase("/jsp/cadcliente.html")){
				cadNewUser(request, response);
			}else{
				response.sendRedirect("/");
			}
		}catch(Exception e){ //tratar melhor ?????
			e.printStackTrace();
		}
	}
	
	protected void cadNewUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			/* Resgatar os dados do formulario: formCliente*/
			String nome = request.getParameter("nome");
			String sobrenome = request.getParameter("sobrenome");
			String sexo = request.getParameter("rbsexo");
			// String tipoConta = request.getParameter("tipoConta");
			String pathImgPerf = request.getParameter("pathImgPerf");
			String dtNasc = request.getParameter("dtnasc");
			String telefone = request.getParameter("telefone");
			String lingPref = request.getParameter("lingPref");
			String email = request.getParameter("email");
			String senha = request.getParameter("senha");
			
			Usuario usuario = new Usuario();
			
			/* Hospedar os dados do Cliente na Bean Cliente*/
			usuario.setNome(nome);
			usuario.setSobrenome(sobrenome);
			usuario.setSexo(sexo);
			// usuario.setTipoConta(tipoConta);
			usuario.setPathImgPerf(pathImgPerf);
			usuario.setDtNasc(UtilsBanco.converterData(dtNasc));
			usuario.setTelefone(telefone);
			usuario.setLingPref(lingPref);
			usuario.setEmail(email);
			usuario.setSenha(senha);
			
			if(new UserDao().cadastrar(usuario)){
				/*setar a mensagem de sucesso no request*/
				request.setAttribute("msg", 
				"<div class='alert alert-success'>Cliente cadastrado com sucesso</div>");
			}else{
				/*setar a mensagem de erro no request*/
				request.setAttribute("msg", 
				"<div class='alert alert-danger'>Cliente já possui possui um cadastro no sistema</div>");
			}
		}catch(Exception e){
			e.printStackTrace();
			/*setar a mensagem de erro no request*/
			request.setAttribute("msg", 
					"<div class='alert alert-danger'>Funcionario não cadastrado</div>");
		}finally{
			request.getRequestDispatcher("CadastrarCliente.jsp").forward(request, response);
		}
		
}

}
