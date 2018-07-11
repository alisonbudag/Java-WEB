<%

	//Obter dados do usuário
	String nome = request.getParameter("nome");
	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	int nivel = Integer.parseInt(request.getParameter("nivel"));
	
	//Exibir dados do usuário
	out.print(nome+"<br>");
	out.print(email+"<br>");
	out.print(senha+"<br>");
	out.print(nivel);

%>