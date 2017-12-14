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
<title>Torneos</title>
</head>
<body>

	<div class="color-fondo-login">
	    <div class="imagen-fondo"></div>
	</div>
	 <jsp:include page="headerUsuario.jsp" /> 
	<div  class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="container contenedor">
					<h1>Torneo: ${torneo.nombreTorneo} </h1>
					<h3>Fecha inicio: ${torneo.fechaInicio} </h3>
					<br>
					
			         <table class="table table-hover">
			            <thead>
			            <tr>
			                
			                <th>Nombre</th>
			                <th>Goles a favor</th>
			                <th>Goles en contra</th>
			                <th>Goles</th>
			                <th>Puntaje</th>
			             
			            </tr>
			            </thead>

			            <c:forEach var="e" items="${tablaDetalle}">
			            <tr>
			                <td><c:out value="${e[5]}"/></td>
			                <td><c:out value="${e[1]}"/></td>
			                <td><c:out value="${e[2]}"/></td>
			                <td><c:out value="${e[3]}"/></td>
			                <td><c:out value="${e[4]}"/></td>

			            </tr>
			          </c:forEach>     
			        </table>
			         
				</div>
			</div>
		</div>
	</div>
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
    </body>
    
</html>