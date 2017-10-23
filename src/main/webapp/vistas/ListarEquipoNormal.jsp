<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.LinkedList"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/ionicons.min.css" rel="stylesheet">
<link href="css/estilo.css" rel="stylesheet">
<title>Equipos</title>
</head>
<body>
	<div class="color-fondo-login">
	    <div class="imagen-fondo"></div>
	</div>
	<div  class="container-fluid">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4" id="login" >
				<h1>Listado de Equipos</h1>
		        <table class="table table-bordered">
		            <thead>
		            <tr>
		                <th>Nombre</th>
		                <th>Partidos Jugados</th>
		                <th>Número de jugadores</th>
		                
		                
		                
		            </tr>
		            </thead>
		           <c:forEach var="equipos" items="${listaEquipos}">
		            <tr>
		                <td><c:out value="${equipos.nombre}"/></td>
		                <td><c:out value="${equipos.nroPartidos}"/></td> 
		                <td><c:out value="${equipos.nroJugadores}"/></td>  
		                
		            </tr>
		          </c:forEach>     
		        </table>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>

    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
    </body>
    
</html>