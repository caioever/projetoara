package model.persistence;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.entity.Documentario;

public class DocumentarioDao extends Dao{
	
	/* Add Documentário */
	/* Exibir Documentário*/
	public Documentario prepDisplay (int codigo) throws Exception {
		Documentario doc = null;
		try {
			open();
			
			stmt = con.prepareStatement("SELECT * FROM projetoara.documentarios WHERE documentarios.codigo = ?");
			stmt.setInt(1, codigo);
			rs = stmt.executeQuery();
			if(rs.next()) {
				doc = new Documentario(codigo, rs.getString("nome"), 
										rs.getString("sinopse"),
										rs.getString("diretor"),
										rs.getString("ano"),
										rs.getString("idioma"),
										rs.getString("estudio"),
										rs.getString("url_youtube"),
										rs.getString("caminho_thumb"));
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return doc;
	}
	
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
				doc.setSinopse(rs.getString("sinopse"));
				doc.setDiretor(rs.getString("diretor"));
				doc.setAno(rs.getString("ano"));
				
				catalogoFull.add(doc);
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
