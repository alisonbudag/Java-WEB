<%@page import="br.com.jsp.dao.UsuarioDao"%>
<%@page import="br.com.jsp.bean.UsuarioBean"%>
<%@page import="br.com.jsp.connection.ConnectionFactory"%>
<%
//Obter email e senha
String email = request.getParameter("email");
String senha = request.getParameter("senha");

	//Obter dados do usuário
	UsuarioBean usuario = new UsuarioBean();
	usuario = new UsuarioDao().login(email, senha);
	
	//Redirecionamento
	if(usuario.getIdUsuario() == 0){
		response.sendRedirect("../index.jsp");
	}else{
		response.sendRedirect("../painel.jsp");
	}

%>