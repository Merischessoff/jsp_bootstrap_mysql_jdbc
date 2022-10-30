<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="paginaErro.jsp" %>
<%@page import="java.util.*"%>
<%@page import="classes.*"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale = 1, shrink-to-fit=no">
	<title>Página Principal</title>
	<link rel="stylesheet" type="text/css" href="bibliotecas/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="bibliotecas/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="bibliotecas/datatables/dataTables.bootstrap4.css">
	<link rel="stylesheet" type="text/css" href="css/sb-admin.min.css">
</head>
	<jsp:useBean id="vestuarioBean" class="classes.Vestuario" scope="request"/>
    <% List<Vestuario> lista=vestuarioBean.listAll(); 
    request.setAttribute("listaReq",lista); %>  
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<h1>Vestuários Cadastrados</h1>
				</div>
			</div>
			<div class="card mb-3">
				<div class="card-header">
					<i class="fa fa-table"></i> Vestuários Cadastrados
				</div>
				<div class="card-body">
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
							<tr>
								<th>Nome</th>
								<th>Valor Unitário</th>
								<th>Categoria</th>
								<th>Genero</th>
								<th>Tamanho</th>
							</tr>
						</thead>
						<tbody>
					    	<c:forEach var="vestuario" items="${listaReq}">
						    	<tr>
						        	<td>${vestuario.getNome()}</td>
						    		<td>${vestuario.getValorUnitario()}</td>
						   	   		<td>${vestuario.getCategoria()}</td>
						   	   		<td>${vestuario.getGenero()}</td>
						   	   		<td>${vestuario.getTamanho()}</td>
						    	</tr>
  					    	</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	
	<script src="bibliotecas/jquery/jquery.min.js"></script>
	<script src="bibliotecas/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="bibliotecas/jquery-easing/jquery.easing.min.js"></script>
	<script src="bibliotecas/datatables/jquery.dataTables.js"></script>
	<script src="bibliotecas/datatables/dataTables.bootstrap4.js"></script>
	<script src="js/sb-admin.min.js" type="text/javascript"></script>
	<script src="js/sb-admin-datatables.min.js" type="text/javascript"></script>
</body>
</html>