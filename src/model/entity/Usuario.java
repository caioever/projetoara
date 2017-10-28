package model.entity;

import java.util.GregorianCalendar;

public class Usuario {
	private String nome;
	private String sobrenome;
	private String sexo;
	private Integer tipoConta;
	private String pathImgPerf;
	private GregorianCalendar dtNasc;
	private String telefone;
	private String lingPref;
	private String email;
	private String senha;
	
	/*Construtor Vazio*/	
	public Usuario() {
		super();
	}

	/*Construtor Cheio*/
	public Usuario(String nome, String sobrenome, String sexo, Integer tipoConta, String pathImgPerf, GregorianCalendar dtNasc, String telefone, String lingPref, String email, String senha) {
		super();
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.sexo = sexo;
		this.tipoConta = tipoConta;
		this.pathImgPerf = pathImgPerf;
		this.dtNasc = dtNasc;
		this.telefone = telefone;
		this.lingPref = lingPref;
		this.email = email;
		this.senha = senha;
	}
	
	@Override
	public String toString() {
		return "Usuario [nome=" + nome + ", sobrenome=" + sobrenome + ", sexo=" + sexo + ", tipoConta=" + tipoConta
				+ ", pathImgPerf=" + pathImgPerf + ", dtNasc=" + dtNasc + ", telefone=" + telefone + ", lingPref="
				+ lingPref + ", email=" + email + ", senha=" + senha + "]";
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
