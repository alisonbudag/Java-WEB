<!-- Incluir topo.jsp -->
<%@ include file="includes/topo.jsp" %>

		<main>
			
			<form action="acoes/cadastrarUsuario.jsp" class="frmCadastrarUsuario">
				<input type="text" placeholder="Nome" name="nome" class="form-control">
				<input type="text" placeholder="Email" name="email" class="form-control">
				<input type="password" placeholder="Senha" name="senha" class="form-control">
				<select name="nivel" class="form-control">
					<option value="0">N�vel</option>
					<option value="1">Administrador</option>
					<option value="2">Usu�rio Comum</option>
				</select>
				<input type="submit" value="Cadastrar usu�rio" class="btn btn-primary">
			</form>
			
		</main>
	
	</body>
</html>