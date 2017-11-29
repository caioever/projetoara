package model.entity;

public class Documentario {
	private int codigo;
	private String nome;
	private String descricao;
	private String diretor;
	private int ano;
	
	
	/* Construtores */
	
	//Contrutor Vazio
	public Documentario() {
		super();
	}
	
	//Contrutor Cheio
	public Documentario(int codigo, String nome, String descricao, String diretor, int ano) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.descricao = descricao;
		this.diretor = diretor;
		this.ano = ano;
	}
	
	//To String
	@Override
	public String toString() {
		return "Codigo: " + codigo + "\n" +
				"Nome: " + nome + "\n" +
				"Diretor: " + diretor + "  Ano: " + ano + "\n" +
				"\nDescrição: \n" + descricao;
	}
	
	/* Gets */
	public int getCodigo() {
		return codigo;
	}
	public String getNome() {
		return nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public String getDiretor() {
		return diretor;
	}
	public int getAno() {
		return ano;
	}
	
	/* Sets */
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public void setDiretor(String diretor) {
		this.diretor = diretor;
	}
	public void setAno (int ano) {
		this.ano = ano;
	}
}
