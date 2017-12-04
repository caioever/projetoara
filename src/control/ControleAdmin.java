package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.entity.Documentario;
import model.persistence.AdminDao;
import model.persistence.Dao;

@WebServlet("/jsp/admin.jsp")
public class ControleAdmin extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public ControleAdmin() {
	super();
	}
		
	
	/* Metodos doGet e doPost */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}
	
	protected void execute (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//pega a URL
			String url = request.getServletPath();
			
			if(url.equalsIgnoreCase("/jsp/admin.jsp/cadastrarDoc.html")) {
				cadastrarDocumentario(request, response);
				
			} else if (url.equalsIgnoreCase("/jsp/admin.jsp/excluirDoc.html")) {
				excluirDocumentario(request, response);}
				else {
				response.sendRedirect("/");
				System.out.println("teste2");
				}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	protected void cadastrarDocumentario(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		/* Resgatar os dados do formulario: Documentarios*/
		

		//String codigo = request.getParameter("");
		String nome = request.getParameter("nomeDoc");
		String descricao = request.getParameter("sinopseDoc");
		String diretor = request.getParameter("autorDoc");
		String ano = request.getParameter("dateDoc");
		String estudio = request.getParameter("estudioDoc");
		String genero = request.getParameter("generoDoc");
		String idioma = request.getParameter("idiomaDoc");
		String thumbnail = request.getParameter("thumbDoc");
		
		Documentario documentario = new Documentario();
		/* Hospedar os dados do Cliente na Bean Cliente*/
		//documentario.setCodigo(codigo);
		documentario.setNome(nome);
		documentario.setDescricao(descricao);
		documentario.setDiretor(diretor);
		documentario.setAno(ano);
		documentario.setEstudio(estudio);
		documentario.setGenero(genero);
		documentario.setIdioma(idioma);
		documentario.setThumbnail(thumbnail);

		if(new AdminDao().cadastrarDocumentario(documentario)){
			request.setAttribute("msg", 
			"<div class='alert alert-success'>Documentario cadastrado com sucesso</div>");
		}else{
			request.setAttribute("msg", 
			"<div class='alert alert-danger'>Cocumentario j� possui possui um cadastro no sistema</div>");
		}
		
	}
	
	protected void excluirDocumentario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
	}
}


