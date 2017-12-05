package model.persistence;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.entity.Documentario;

public class DocumentarioDao extends Dao{
	
	/* Add Documentário */
	/* Exibir Documentário*/
	/* Editar Documentário */
	/* Catalogo Completo */
	public List<Documentario> catalogoFull() throws Exception {
		List<Documentario> catalogoFull = null;
		try {
			open();
			
			stmt = con.prepareStatement ("SELECT * FROM projetoara.documentarios");
			rs = stmt.executeQuery();
			
			catalogoFull = new ArrayList<>();
			while(rs.next()) {
				Documentario doc = new Documentario();
				
				doc.setCodigo(rs.getInt("codigo"));
				doc.setNome(rs.getString("nome"));
				doc.setSinopse(rs.getString("descricao"));
				doc.setDiretor(rs.getString("diretor"));
				doc.setAno(rs.getString("ano"));
			}
		}
		catch(SQLException e ) {
			System.out.println("Codigo do erro: " + e.getErrorCode() + "\n" +
								"Mensagem do erro: " + e.getMessage());
		}finally {
			close();
		}
		return catalogoFull;
	}
	

}
