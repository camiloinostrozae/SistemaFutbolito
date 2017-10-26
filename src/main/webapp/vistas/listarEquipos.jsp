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
		                <th>Eliminar Equipo</th>
		                <th>Actualizar Equipo</th>
		                
		                
		            </tr>
		            </thead>
		           <c:forEach var="equipos" items="${listaEquipos}">
		            <tr>
		                <td><c:out value="${equipos.nombre}"/></td>
		                <td><c:out value="${equipos.nroPartidos}"/></td> 
		                <td><c:out value="${equipos.nroJugadores}"/></td>
		                <td>
		                <form  class="form-horizontal span4 " action="eliminarEquipo" method = "post" onSubmit="return enviar()">
		                <input type="text"  size="1" id="id" name="id" value="${equipos.idEquipo}" required="requerid"  style="visibility:hidden" />
		            <input class="btn btn-info" value="eliminar" type="submit">
			        </form>
			                 </td><td><form class="form-horizontal span4 " action="actualizarEquipo" method = "post" >
			                <input type="text" size="1" id="id" name="id" value="${equipos.idEquipo}" required="requerid"  style="visibility:hidden" />
			            <input class="btn btn-info"  value="actualizar" type="submit">
			        </form>
		                </td>
		                
		            </tr>
		          </c:forEach>     
		        </table>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	<script type="text/javascript"> 
	function enviar(){
		//Ingresamos un mensaje a mostrar
		//var formulario = document.getElementById("myform");
		var mensaje = confirm("¿Está seguro?");
		//var dato = formulario[0];
		//Detectamos si el usuario acepto el mensaje
		if (mensaje) {	
		//formulario.submit();
		alert("Equipo eliminado");
		return true;
		}
		
		else {
			;
			return false;
		exit()
		}
		}
	</script>
    <script src="js/jquery.js"></script>
	
    </body>
    
</html>