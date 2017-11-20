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
<title>Futbolito</title>
</head>
<body>
	<div class="color-fondo-login">
	    <div class="imagen-fondo"></div>
	</div>
	<div  class="container-fluid">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4" id="login" >
				<h2>Solicitudes</h2>
		        <table class="table table-bordered">
		            <thead>
		            <tr>
		                <th>Nombre Equipo</th>
		                <th>Acción</th>
		                <th>Descripción</th>
		                <th>Estado</th>
		                <th>Actualizar</th>
		                
		                
		                
		            </tr>
		            </thead>
		           <c:forEach var="sol" items="${listarSolicitud}">
		            <tr>
		                <td><c:out value="${sol.nombre_equipo}"/></td>
		                <td><c:out value="${sol.accion}"/></td> 
		                <td><c:out value="${sol.descripcion}"/></td>
		                <td><c:out value="${sol.estado}"/></td>
		               
		                
		                <td>
		                <form  class="form-horizontal span4 " action="cambiarEstado" method = "post">
		                <input type="text"  size="1" id="id" name="id" value="${sol.id_solicitud}" required="required"  style="visibility:hidden" />
		                <button class="btn btn-info" type="submit">Actualizar Estado</button>
			            </form>
			            </td>
		                
		            </tr>
		          </c:forEach>     
		        </table>
		        <br>
			            <form action="volver2" method = "get" >
					 	<input class="btn btn-warning" value="Volver" type="submit">
					 </form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	
    <script src="js/jquery.js"></script>
	
    </body>
    
</html>