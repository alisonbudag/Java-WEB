<%

	//Excluir sessão usuário
	session.setAttribute("usuario", null);

	//Redirecionamento
	response.sendRedirect("index.jsp");

%>