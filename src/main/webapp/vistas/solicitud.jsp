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
			<center>
				<h2>Solicitud para Crear Equipo</h2>
		<form class="form-horizontal span4 " action="CrearSolicitud" method = "POST" onSubmit="return enviar()">
				 
			            <div class="control-group">
			                <label class="control-label" >Ingrese el Nombre del Equipo</label>
			                <div class="controls">
			                    <input class="form-control" type="text" name="nombreEquipo" required style="width: 300px"/>
			                </div>
			            </div>
			            <br>
			            <br>
			            <button class="btn btn-warning" type="submit"><Span class = "glyphicon glyphicon-envelope"></span> Enviar</button>
			        </form>
			        <br>
			            <form action="volver" method = "get" >
					 	<input class="btn btn-info" value="Volver" type="submit">
					 </form>
			        </center>
			        
		        
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	<script type="text/javascript"> 
	function enviar(){
		alert("Usted a Enviado una solicitud para Crear un Equipo");
		return true;
	}
	</script>
	
    <script src="js/jquery.js"></script>
	
    </body>
    
</html>