package model.entity;

public class Documentario {
	//Lucas: Todas as referências aos códigos foram comentadas, pois não temos um método para gera-los ainda.
	//private int codigo;
	private String nome;
	private String descricao;
	private String diretor;
	private String ano;
	private String idioma;
	private String genero;
	private String estudio;
	private String thumbnail;
	/* Construtores */
	
	//Contrutor Vazio
	public Documentario() {
		super();
	}
	
	//Contrutor Cheio
	public Documentario(int codigo, String nome, String descricao, String diretor, String ano, String idioma, String genero, String estudio, String thumbnail) {
		super();
		//this.codigo = codigo;
		this.nome = nome;
		this.descricao = descricao;
		this.diretor = diretor;
		this.ano = ano;
		this.idioma=idioma;
		this.genero=genero;
		this.estudio=estudio;
		this.setThumbnail(thumbnail);
	}
	
	//To String
	@Override
	public String toString() {
		return /*"Codigo: " + codigo +*/ "\n" +
				"Nome: " + nome + "\n" +
				"Diretor: " + diretor + "  Ano: " + ano + "\n" +
				"\nDescrição: \n" + descricao;
	}
	
	/* Gets */
	/*public int getCodigo() {
		return codigo;
	}*/
	public String getNome() {
		return nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public String getDiretor() {
		return diretor;
	}
	public String getAno() {
		return ano;
	}
	
	/* Sets */
	/*public void setCodigo(int codigo) {
		this.codigo = codigo;
	}*/
	public void setNome(String nome) {
		this.nome = nome;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
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

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getEstudio() {
		return estudio;
	}

	public void setEstudio(String estudio) {
		this.estudio = estudio;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
}
