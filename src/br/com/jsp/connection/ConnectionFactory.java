package br.com.jsp.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JOptionPane;

public class ConnectionFactory {
	
	//Constante para acessar o Banco de Dados
		private final String url = "jdbc:mysql://localhost:3306/conceitos_jsp";
		private final String user = "root";
		private final String password = "proway";
		
		//M�todo para retornar a conex�o com o DB
		public Connection obterConexao(){
				
			//Vari�vel para retornar conex�o
			Connection conexao = null;
			
			//Selecionar o tipo de Driver para conectar ao DB
			try{
				Class.forName("com.mysql.jdbc.Driver");
			}catch(Exception erroDriver){
				System.out.println("Falha ao selecionar o driver de conex�o.");
			}
			
			//Realizar a conex�o
			try{
				conexao = DriverManager.getConnection(url, user, password);
			}catch(SQLException e){
				JOptionPane.showMessageDialog(null, "Falha: "+e.getMessage());
				throw new RuntimeException(e);
			}
			
			//Retorno
			return conexao;
			
		}

}
