<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page errorPage="paginaErro.jsp" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale = 1, shrink-to-fit=no">
	<title>Template Master</title>
	<link rel="stylesheet" type="text/css" href="bibliotecas/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="bibliotecas/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="bibliotecas/datatables/dataTables.bootstrap4.css">
	<link rel="stylesheet" type="text/css" href="css/sb-admin.min.css">
</head>
    <body>
        <h1> Redirecionando a página </h1>
        <jsp:forward page="login.jsp"/>
    </body>
    		
	<footer class="sticky-footer">
		<div class="container">
			<div class="text-center">
				<small>Copyright Seu Site 2017</small>
			</div>
		</div>
	</footer>
</body>
</html>