<%@page import="br.com.jsp.dao.UsuarioDao"%>
<%@page import="br.com.jsp.bean.UsuarioBean"%>
<%@page import="br.com.jsp.connection.ConnectionFactory"%>
<%
//Obter email e senha
String email = request.getParameter("email");
String senha = request.getParameter("senha");

	//Obter dados do usu�rio
	UsuarioBean usuario = new UsuarioBean();
	usuario = new UsuarioDao().login(email, senha);
	
	//Exibir os dados do usu�rio
	out.print("<hr>");
	out.print("<br>Id "+usuario.getIdUsuario());
	out.print("<hr>Nome "+usuario.getNomeUsuario());
	out.print("<hr>Email "+usuario.getEmailUsuario());
	out.print("<hr>Senha "+usuario.getSenhaUsuario());
	out.print("<hr>N�vel "+usuario.getNivelUsuario());

%>