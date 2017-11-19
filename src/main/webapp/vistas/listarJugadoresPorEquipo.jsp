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
<title>futbolito</title>
</head>
<body>
	<div class="color-fondo-login">
	    <div class="imagen-fondo"></div>
	</div>
	<div  class="container-fluid">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4" id="login" >
				<h1>Jugadores</h1>
		        <table class="table table-bordered">
		            <thead>
		            <tr>
		                <th>Nombre</th>
		                <th>Apellido</th>
		                <th>Acción</th>
		            </tr>
		            </thead>
		           <c:forEach var="jugadores" items="${listarJugadoresdeEquipo}">
		            <tr>
		                <td><c:out value="${jugadores.nombre}"/></td>
		                <td><c:out value="${jugadores.apellido}"/></td> 
		                <td>
		                <form  class="form-horizontal span4 " action="eliminarJugador" method = "post" onSubmit="return enviar()">
		                <input type="text"  size="1" id="id" name="id" value="${jugadores.idJugador}" required="requerid"  style="visibility:hidden" />
		            <button class="btn btn-danger"  type="submit"><span class = "glyphicon glyphicon-trash"></span> eliminar</button>
			        <input type="hidden" name="idEquipo" value="${jugadores.idEquipo}" />
			        </form>
			        </td>
			        <td>
		                <form  class="form-horizontal span4 " action="modificarJugador" method = "post" >
		                <input type="text"  size="1" id="id" name="id" value="${jugadores.idJugador}" required="requerid"  style="visibility:hidden" />
		            <button class="btn btn-danger"  type="submit"><span class = "glyphicon glyphicon-trash"></span> Actualizar</button>
			        <input type="hidden" name="idEquipo" value="${jugadores.idEquipo}" />
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
		var mensaje = confirm("¿Está seguro de eliminar a este jugador?");
		//var dato = formulario[0];
		//Detectamos si el usuario acepto el mensaje
		if (mensaje) {	
		//formulario.submit();
		alert("Jugador eliminado con éxito");
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