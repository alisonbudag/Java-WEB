<%

	//Excluir sess�o usu�rio
	session.setAttribute("usuario", null);

	//Redirecionamento
	response.sendRedirect("index.jsp");

%>