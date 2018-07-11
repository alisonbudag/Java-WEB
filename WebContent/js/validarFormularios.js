function validaLogin(){
	// Obter elementos
	var mensagem = document.getElementById("mensagem");
	var email = document.getElementById("email");
	var senha = document.getElementById("senha");
	
	// Verificar se o e-mail possui pelo menos 8 caracteres
	if(email.value.length < 8){
		
		//Exibindo a mensagem
		mensagem.style.display = "block";
		
		//Texto da mensagem
		mensagem.innerHTML = "O email precisa ter ao menos 8 caracteres.";
		
		//Deixar o cursor no campo
		email.focus();
		
		return false;
		
	}
	
	//Verificar se possui pelo menos um @ e um .
	if(email.value.indexOf("@") == -1 || email.value.indexOf(".") == -1){
		
		//Exibindo a mensagem
		mensagem.style.display = "block";
		
		//Texto da mensagem
		mensagem.innerHTML = "Email inválido.";
		
		//Deixar o cursor no campo
		email.focus();
		
		return false;
		
	}
	
	//Verificar se a senha possui pelo menos 5 caracteres
	if(senha.value.length < 5){
		
		//Exibindo a mensagem
		mensagem.style.display = "block";
		
		//Texto da mensagem
		mensagem.innerHTML = "A senha precisa ter pelo menos 5 caracteres.";
		
		//Deixar o cursor no campo
		senha.focus();
		
		return false;
		
	}
	
}