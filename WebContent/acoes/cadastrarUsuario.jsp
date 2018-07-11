<%@page import="br.com.jsp.dao.UsuarioDao"%>
<%

	//Obter dados do usuário
	String nome = request.getParameter("nome");
	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	int nivel = Integer.parseInt(request.getParameter("nivel"));
	
	//Executar o método de cadastro
	new UsuarioDao().cadastrarUsuario(nome, email, senha, nivel);
	
	//Redirecionar para a página painel.jsp
	response.sendRedirect("../painel.jsp");
	
%>