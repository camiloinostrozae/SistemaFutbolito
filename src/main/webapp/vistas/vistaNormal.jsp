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
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#">Futbolito</a>
	    </div>
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav navbar-right">
	      	 <li><a href="solicitud">Crear equipo</a></li>
	      	 <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Listar Equipo<span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="listarequiposPropios">Mi equipo</a></li>
	            <li><a href="listarequiposNormal">Todos</a></li>
	          </ul>
	        </li>
	        <li><a href="#">Perfil</a></li>
	        <li><a href="index.jsp">Cerrar Sesión</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	<div  class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="container contenedor">
					<h1>Bienvenido!!</h1>
				</div>

			<!--  <div class="row">
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
		</div>
		-->
			</div>
		</div>
	</div>
	
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>