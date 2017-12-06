package model.entity;

public class Documentario {
	//Lucas: Todas as referencias aos codigos foram comentadas, pois nao temos um metodo para gera-los ainda.
	private int codigo;
	private String nome;
	private String sinopse;
	private String estudio;
	private String diretor;
	private String ano;
	private String idioma;
	//private String genero;
	private String url_youtube;
	private String caminho_thumb;
	/* Construtores */

	//Contrutor Vazio
	public Documentario() {
		super();
	}

	//Contrutor Cheio
	public Documentario(int codigo, String nome, String sinopse, String diretor, String ano, String idioma, /*String genero,*/ String estudio, String url, String caminho_thumb) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.sinopse = sinopse;
		this.diretor = diretor;
		this.estudio=estudio;
		this.ano = ano;
		this.idioma=idioma;
		//this.genero=genero;
		this.url_youtube = url;
		this.caminho_thumb = caminho_thumb;
	}

	//To String
	@Override
	public String toString() {
		return "Codigo: " + codigo + "\n" +
				"Nome: " + nome + "\n" +
				"Diretor: " + diretor + "  Ano: " + ano + "\n" +
				"\nSinopse: \n" + sinopse;
	}

	/* Gets */
	public int getCodigo() {
		return codigo;
	}
	public String getNome() {
		return nome;
	}
	public String getSinopse() {
		return sinopse;
	}
	public String getDiretor() {
		return diretor;
	}
	public String getAno() {
		return ano;
	}

	/* Sets */
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public void setSinopse(String sinopse) {
		this.sinopse = sinopse;
	}
	public void setDiretor(String diretor) {
		this.diretor = diretor;
	}
	public void setAno (String ano) {
		this.ano = ano;
	}

	public String getIdioma() {
		return idioma;
	}

	public void setIdioma(String idioma) {
		this.idioma = idioma;
	}
	/*
	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}
	*/
	public String getEstudio() {
		return estudio;
	}

	public void setEstudio(String estudio) {
		this.estudio = estudio;
	}

	public String getUrl_youtube() {
		return url_youtube;
	}

	public void setUrl_youtube(String url_youtube) {
		this.url_youtube = url_youtube;
	}
	
	public String getCaminho_thumb() {
		return caminho_thumb;
	}

	public void setCaminho_thumb(String caminho_thumb) {
		this.caminho_thumb = caminho_thumb;
	}
}
