package model.entity;

import java.util.GregorianCalendar;

public class Usuario {
	private String nome;
	private String sobrenome;
	private String senha;
	private String email;
	private Integer tipoConta;
	private String pathImgPerf;
	private String sexo;
	private String telefone;
	private GregorianCalendar dtNasc;
	private String lingPref;
	
	/*Construtor Vazio*/	
	public Usuario() {
		super();
	}

	/*Construtor Cheio*/
	public Usuario(String nome, String sobrenome, String senha, String email, Integer tipoConta, String pathImgPerf, String sexo, String telefone, GregorianCalendar dtNasc, String lingPref) {
		super();
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.senha = senha;
		this.email = email;
		this.tipoConta = tipoConta;
		this.pathImgPerf = pathImgPerf;
		this.sexo = sexo;
		this.telefone = telefone;
		this.dtNasc = dtNasc;
		this.lingPref = lingPref;
	}
	
	@Override
	public String toString() {
		return "Usuario [nome = " + nome + ", sobrenome = " + sobrenome + ", email = " + email + ", tipoConta = " + tipoConta
				+ ", pathImgPerf = " + pathImgPerf + ", sexo = " + sexo + ", telefone = " + telefone + ", dtNasc=" + dtNasc + 
				+ ", Lingua de preferencia = " + lingPref + "]";
	}
	

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public Integer getTipoConta() {
		return tipoConta;
	}

	public void setTipoConta(Integer tipoConta) {
		this.tipoConta = tipoConta;
	}

	public String getPathImgPerf() {
		return pathImgPerf;
	}

	public void setPathImgPerf(String pathImgPerf) {
		this.pathImgPerf = pathImgPerf;
	}

	public GregorianCalendar getDtNasc() {
		return dtNasc;
	}

	public void setDtNasc(GregorianCalendar dtNasc) {
		this.dtNasc = dtNasc;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getLingPref() {
		return lingPref;
	}

	public void setLingPref(String lingPref) {
		this.lingPref = lingPref;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
	
}
