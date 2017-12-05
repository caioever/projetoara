package model.persistence;

import java.sql.SQLException;

import model.entity.Documentario;

public class AdminDao extends Dao{




	public boolean cadastrarDocumentario(Documentario doc) throws Exception{
		boolean success = false;

		try {
			open();
			con.setAutoCommit(false);
			stmt = con.prepareStatement("insert into documentarios values(?,?,?,?,?,?,?,?,?)");
			stmt.setInt(1, doc.getCodigo());
			stmt.setString(2, doc.getNome());
			stmt.setString(3, doc.getSinopse());
			stmt.setString(4, doc.getDiretor());
			stmt.setString(5, doc.getAno());
			stmt.setString(6, doc.getIdioma());
			stmt.setString(7, doc.getEstudio());
			stmt.setString(8, doc.getUrl_youtube());
			stmt.setString(9, doc.getCaminho_thumb());
			
			//stmt.setString(6, doc.getGenero());
			
			stmt.execute();
			success=true;
			con.commit();
		}catch(SQLException e1){
			if (con != null){
				try {
					System.out.println("Rollback efetuado na transacao");
					con.rollback();
					success = false;
					System.out.println("Erro!"+e1);
				} catch(SQLException e2) {
					System.err.print("Erro na transacao!"+e2); 
				}
			}
		}finally{
			close();}

		return success;
		}

}
