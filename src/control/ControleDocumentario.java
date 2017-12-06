package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.entity.Documentario;
import model.persistence.DocumentarioDao;

@WebServlet({"/ControleDocumentario", "/jsp/CatalogoCompleto.html", "/jsp/displaydoc.html"})

public class ControleDocumentario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//Contrutor
	public ControleDocumentario() {
		super();
	}
	
	/* Metodos doGet e doPost */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}
	
	//Funcaoo de execucao
	protected void execute (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//pega a URL
			String url = request.getServletPath();
			
			if(url.equalsIgnoreCase("/jsp/CatalogoCompleto.html")) {
				catalogoFull(request, response);
				System.out.println("[OK - Catalogo completo");
			}if (url.equalsIgnoreCase("/jsp/displaydoc.html")){
				displaydoc(request, response);
				System.out.println("[OK - DISPLAY DOCUMENTARIO");
			}else {
				response.sendRedirect("/");
			}
		}catch(Exception e) {
			System.out.println("ERRO");
			e.printStackTrace();
		}
	}
	
	/* Lista completa de documentarios  - Catalogo Full*/
	protected void catalogoFull(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//Chama a DocumentarioDao
			DocumentarioDao dd = new DocumentarioDao();
			List<Documentario> catalogoFull = dd.catalogoFull();
			
			if(catalogoFull == null) {
				request.setAttribute("msg", "<div class=\"alert alert-danger col row\" role=\"alert\">\r\n" + 
						"Estamos com problemas no servidor, tente novamente mais tarde..." + 
						"</div>");
				request.getRequestDispatcher("catalogoFull.jsp").forward(request, response);
			}else {
				request.setAttribute("msg", "<div class=\"alert alert-success col row\" role=\"alert\">\r\n" + 
						"Temos docs novos, venha conhecer..." + 
						"</div>");
				request.setAttribute("ld", catalogoFull);
				//System.out.println(catalogoFull);
				request.getRequestDispatcher("catalogoFull.jsp").forward(request, response);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	/* Apresenta o diplay do documentário com o video no youtube */
	protected void displaydoc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//Chama o documentário baseado no codigo dele
			int codigo = Integer.parseInt(request.getParameter("codigo"));
			
			//Chama a classe Dao
			DocumentarioDao dd = new DocumentarioDao();
			
			//Aciona o metodo da classe dao que retorna os dados de um documentario a partir do codigo
			Documentario doc = dd.prepDisplay(codigo);
			
			if(doc == null) {
				request.setAttribute("msg", "<div class='alert alert-warning'> Documentario nao encontrado, ou apagado</div>");
				request.getRequestDispatcher("docDisplay.jsp").forward(request,  response);
			}else {
				request.setAttribute("d", doc);
				request.getRequestDispatcher("docDisplay.jsp").forward(request,  response);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
