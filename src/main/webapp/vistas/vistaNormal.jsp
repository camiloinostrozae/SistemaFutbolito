<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
				
				<center>
					<h1>Vista Usuario</h1>
					<br>
				    <form class="form-horizontal span4 " action="listarequiposNormal" method = "POST" >
			            <input class="btn btn-info" value="Listar Todos los Equipos" type="submit">
			        </form>
				</center>
				<br>
				<center>
				    <form class="form-horizontal span4 " action="listarequiposPropios" method = "POST" >
			            <input class="btn btn-info" value="Listar Mis Equipos" type="submit">
			        </form>
				</center>
			
			<br>
				<center>
					
				    <form class="form-horizontal span4 " action="solicitud" method = "POST" >
				   
			            <input class="btn btn-info" value="Solicitud de Manejo de Mis Equipos" type="submit">
			        </form>
				</center>
					<br>
				<center>
					
				    <form class="form-horizontal span4 " action="seleccionarRecinto" method = "POST" >
				   
			            <input class="btn btn-info" value="Realizar reserva" type="submit">
			        </form>
				</center>
				
					<br>
				<center>
					
				    <form class="form-horizontal span4 " action="verReserva" method = "POST" >
				   
			            <input class="btn btn-info" value="Ver reservas" type="submit">
			        </form>
				</center>
				<br>
				<center>
					
				    <form class="form-horizontal span4 " action="contenidoLogin" method = "get" >
				   
			            <input class="btn btn-danger" value="Salir" type="submit">
			        </form>
				</center>
				
				
				
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>