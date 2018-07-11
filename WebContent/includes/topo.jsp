<%@page import="br.com.jsp.bean.UsuarioBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
		//Verificar se há sessão
		UsuarioBean usuario = new UsuarioBean();
		try{
			usuario = (UsuarioBean) session.getAttribute("usuario");
			
			if(usuario.getNomeUsuario() == null){
				response.sendRedirect("index.jsp");	
			}
		}catch(Exception e){
			usuario = new UsuarioBean();
			response.sendRedirect("index.jsp");
		}
		
	%>
	
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
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
	
	<!-- Topo -->
	<header>
	

		<h1><% out.print(usuario.getNomeUsuario()); %></h1>
		
		<nav>
			<a href="painel.jsp">Inicio</a>
			<a href="produtos.jsp">Produtos</a>
			<a href="sair.jsp">Sair</a>
		</nav>
	</header>
	
	