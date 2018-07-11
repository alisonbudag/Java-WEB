package br.com.jsp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.jsp.bean.UsuarioBean;
import br.com.jsp.connection.ConnectionFactory;

public class UsuarioDao {
	
	//Vari�vel contendo a conex�o
	Connection conexao;
	
	//Construtor
	public UsuarioDao(){
		
		this.conexao = new ConnectionFactory().obterConexao();
		
	}
	
	//M�todo para realizar o login
	public UsuarioBean login(String email, String senha){
		
		//Objeto UsuarioBean
		UsuarioBean obj = new UsuarioBean();
		
		//Tenta obter os dados do banco de dados
		try{
			
			//SQL
			String sql = "SELECT * from usuarios where emailUsuario = ? and senhaUsuario = ?";
			
			//Preparar a conex�o
			PreparedStatement ps = this.conexao.prepareStatement(sql);
			
			//Par�metros SQL
			ps.setString(1, email);
			ps.setString(2, senha);
			
			//Armazenar os resultados do comando SQL
			ResultSet rs = ps.executeQuery();
			
			//Obter a �ltima linha
			rs.last();
			
			//Atributos do objeto UsuarioBean
			obj.setIdUsuario(rs.getInt(1));
			obj.setNomeUsuario(rs.getString(2));
			obj.setEmailUsuario(rs.getString(3));
			obj.setSenhaUsuario(rs.getString(4));
			obj.setNivelUsuario(rs.getInt(5));
			
		}catch(Exception e){
			System.out.println("Falha ao obter os dados.");
		}
		
		return obj;
		
	}
}
