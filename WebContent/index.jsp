<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<title>JSP</title>
	
	<!-- JQuery -->
	<script src="js/jquery.min"></script>
	
	<!--  Importar BootSrap -->
	
	<link href="css/bootstrap.css" rel="stylesheet">
	<script src="js/bootstrap.js"></script>

	<!-- Importar estilos -->
	<link href="css/estilos.css" rel="stylesheet">
	
	<!-- JS -->
	<script src="js/validarFormularios.js"></script>
	
	</head>
	<body>
	
		<!-- Caso o usuário/senha estejam incorretos -->
		<%
		
			//Verificar se na URL existe a variável login
			if(request.getParameter("login") != null){
				out.print("<div class='alert alert-danger alertIndex'>Usuário ou senha incorretos.</div>");
			}
		
		%>
	
		<form method="post" action="acoes/logar.jsp" class="formularioLogin" onsubmit="return validaLogin()">
		
			<div class="alert alert-danger" id="mensagem"></div>
		
			<input type="text" placeholder="E-mail" class="form-control" name="email" id="email">
			<input type="password" placeholder="Senha" class="form-control" name="senha" id="senha">
			<input type="submit" class="btn btn-primary btn-lg">
				
		</form>
	</body>
</html>