<%@page import="br.com.jsp.dao.UsuarioDao"%>
<%

	//Obter dados do usu�rio
	String nome = request.getParameter("nome");
	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	int nivel = Integer.parseInt(request.getParameter("nivel"));
	
	//Executar o m�todo de cadastro
	new UsuarioDao().cadastrarUsuario(nome, email, senha, nivel);
	
	//Redirecionar para a p�gina painel.jsp
	response.sendRedirect("../painel.jsp");
	
%>