package model.persistence;

import java.sql.SQLException;
import java.util.GregorianCalendar;

import model.entity.Cliente;
import model.entity.Usuario;

public class UserDao extends Dao{

	/* Incluir o Cliente */	
	public boolean cadastrar(Usuario c) throws Exception{
			boolean success = false;
			try{
				/* Abrir a conexão com o banco de dados*/
				open(); 
		
				/* Retirar o auto commit */
				con.setAutoCommit(false);
		
				/* Inserir uma parte dos dados na Tabela USUARIO*/
				stmt = con.prepareStatement("insert into usuario values(?,?,?,?,?)");
				stmt.setString(1, c.getEmail());
				stmt.setString(2, c.getNome());
				stmt.setString(3, c.getSenha());
				stmt.setString(4,"CLI");
				/* Data do Cadastramento no Sistema */
				String dataCadastro = UtilsBanco.getDataHoraCorrente(); 
				stmt.setString(5,dataCadastro);
					
				stmt.execute();
				success = true;
				
				/* Inserir a outra parte dos dados na Tabela CLIENTE*/
				stmt = con.prepareStatement("insert into cliente values(?,?,?,?,?,?,?)");
				
				stmt.setString(1,c.getSobrenome());
				stmt.setString(2, c.getEmail());
				//String data = UtilsBanco.ConverterDataToBanco(c.getDtNasc());
				stmt.setString(3,UtilsBanco.converterDataToBanco(c.getDtNasc()));
				stmt.setString(4, c.getSexo());
				stmt.setString(5, c.getTelefone());
				stmt.setString(6, c.getLingPref());
				stmt.setString(7, c.getPathImgPerf());	
				stmt.execute();
				success = true;
				con.commit();
				
			}catch(SQLException e1){
				if (con != null){
					try { 
						System.out.println("Rollback efetuado na transação");
						con.rollback();
						success = false;
						System.out.println("Código de Erro: " +e1.getErrorCode()+
								"  Mensagem de Erro =  "+e1.getMessage());
					} catch(SQLException e2) {
						System.err.print("Erro na transação!"+e2); 
					} 
				}
			}finally{
				close();
			}
			return success;
	}

	public Usuario getPerfil(String id)throws Exception{
		Usuario usuario = null;
		try{
			open();
			
			//Junçao das tabelas Usuário e Cliente
			stmt = con.prepareStatement("select * from usuario,cliente "
					+ "where cliente.cpf = ? and usuario.email = cliente.id_email" );
			stmt.setString(1,id);
			rs = stmt.executeQuery();
			if(rs.next()){
				
				usuario = new Usuario(rs.getString("nome"), rs.getString("sobrenome"), rs.getString("sexo"), rs.getInt("tipoConta"),
						rs.getString("pathImgPerf"), UtilsBanco.converterDataBancoToGC(rs.getString("dtNasc")), rs.getString("telefone"), rs.getString("lingPref"),
						rs.getString("email"), rs.getString("senha"));	
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			close();
		}		
		return usuario;
	}
	
}
