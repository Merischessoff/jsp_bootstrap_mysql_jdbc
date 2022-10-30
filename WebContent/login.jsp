<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page errorPage="paginaErro.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale = 1, shrink-to-fit=no">
	<title>Template Master</title>
	<link rel="stylesheet" type="text/css" href="bibliotecas/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="bibliotecas/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/sb-admin.min.css">
</head>
<!--2)Elabore a página Login.jsp que verifica se a identificação do usuário e sua senha são válidas. 
	  Se os dados estiverem incorretos você deve exibir uma mensagem de erro; caso os dados estejam corretos 
	  abra a página principal que deve conter um menu com as ações: cadastrar e listar todos.-->
<body class="bg-dark">
	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">Login</div>
			<div class="card-body">
				<form method="POST" action="direcionaMenuPrincipal.jsp">
					<div class="form-group">
						<label for="email">E-mail</label>
						<input type="text" class="form-control" name="email" id="email" 
						placeholder="Digite seu E-mail">
					</div>
					<div class="form-group">
						<label for="senha">Senha</label>
						<input type="password" class="form-control" name="senha" id="senha" 
						placeholder="Digite sua Senha">
					</div>
					<div class="form-group">
					<button class="btn btn-primary btn-block">Entrar no Sistema</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script src="bibliotecas/jquery/jquery.min.js"></script>
	<script src="bibliotecas/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="bibliotecas/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>