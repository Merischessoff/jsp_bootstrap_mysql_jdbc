<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="paginaErro.jsp" %>
<%@page import="java.util.*"%>
<%@page import="classes.*"%>

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
<body class="bg-dark">
	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-body">
				<jsp:useBean id="vestuarioBean" class="classes.Vestuario" scope="request"/>
				<jsp:setProperty name="vestuarioBean" property="*" />
				<%if(vestuarioBean.insert() > 0) {%>
					<jsp:forward page="listVestuario.jsp"/>
				<%}else{%>
					<jsp:forward page="menuPrincipal.jsp"/>
				<%}%>
			</div>
		</div>
	</div>
</body>
</html>