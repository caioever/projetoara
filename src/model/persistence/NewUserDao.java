package model.persistence;

import java.sql.SQLException;
import java.util.GregorianCalendar;

import model.entity.Usuario;

public class NewUserDao extends Dao{

	/* Incluir o Cliente */	
	public boolean cadastrar(Usuario c) throws Exception{
			boolean success = false;
			try{
				/* Abrir a conexão com o banco de dados*/
				open(); 
		
				/* Retirar o auto commit */
				con.setAutoCommit(false);
				
				/* Inserir a outra parte dos dados na Tabela USUARIO*/
				stmt = con.prepareStatement("insert into usuario values(?,?,?,?,?,?,?,?,?)");
				
				stmt.setString(1,c.getNome());
				stmt.setString(2,c.getSobrenome());
				stmt.setString(3,c.getSenha());
				stmt.setString(4, c.getEmail());
				stmt.setInt(5, c.getTipoConta());
				stmt.setString(6, c.getPathImgPerf());	
				//String data = UtilsBanco.ConverterDataToBanco(c.getDtNasc());
				stmt.setString(7, c.getSexo());
				stmt.setString(8, c.getTelefone());
				stmt.setString(9,UtilsBanco.converterDataBancoToGC(c.getDtNasc()));
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
				
				usuario = new Usuario(rs.getString("nome"), rs.getString("sobrenome"), rs.getString("senha"), rs.getString("email"), rs.getInt("tipoConta"),
						rs.getString("pathImgPerf"),rs.getString("sexo"), rs.getString("telefone"), UtilsBanco.converterDataBancoToGC(rs.getString("dtNasc")),
						rs.getString("lingPref"));	
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			close();
		}		
		return usuario;
	}
	
}
