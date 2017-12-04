package model.persistence;

import java.sql.SQLException;

import model.entity.Documentario;

public class AdminDao extends Dao{

	
	
	
	public boolean cadastrarDocumentario(Documentario doc) throws Exception{
		boolean success = false;
		
		try {
			open();
			con.setAutoCommit(false);
			stmt = con.prepareStatement("insert into documentarios values(?,?,?,?,?,?,?,?)");
			stmt.setString(1, doc.getNome());
			stmt.setString(2, doc.getDescricao());
			stmt.setString(3, doc.getDiretor());
			stmt.setString(4, doc.getAno());
			stmt.setString(5, doc.getIdioma());
			stmt.setString(6, doc.getGenero());
			stmt.setString(7, doc.getEstudio());
			stmt.setString(8, doc.getThumbnail());
			stmt.execute();
			success=true;
			con.commit();
		}catch(SQLException e1){
			if (con != null){
				try { 
					System.out.println("Rollback efetuado na transação");
					con.rollback();
					success = false;
					System.out.println("Erro!"+e1);
				} catch(SQLException e2) {
					System.err.print("Erro na transação!"+e2); 
				} 
			}
		}finally{
			close();}
		
		return success;
		}
	
}
