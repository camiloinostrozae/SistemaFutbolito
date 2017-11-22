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
	        <li><a href="#">Cerrar Sesión</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	<div  class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="container contenedor">
					<h1>Equipos</h1>
					<table class="table table-hover">
			            <thead>
			            <tr>
			                <th>Nombre</th>
			                <th>Partidos Jugados</th>
			                <th>Número de jugadores</th>
			                <th>Agregar Jugadores</th>
			                <th>Ver jugadores</th>
			            </tr>
			            </thead>
			           <c:forEach var="equipos" items="${listaMisEquipos}">
			            <tr>
			                <td><c:out value="${equipos.nombre}"/></td>
			                <td><c:out value="${equipos.nroPartidos}"/></td> 
			                <td><c:out value="${equipos.nroJugadores}"/></td> 
			                <td><form  class="form-horizontal span4 " action="agregarJugador" method = "post">
			                	<input type="text"  size="1" id="id" name="idequipo" value="${equipos.idEquipo}" required  style="visibility:hidden" />
			           			<button class="btn btn-success" type="submit"><Span class = "glyphicon glyphicon-plus"></span></button>
			            		</form>
			            	</td>
				           	<td><form  class="form-horizontal span4 " action="verJugadoresdelEquipo" method = "post">
			                	<input type="text"  size="1" id="id" name="idequipo" value="${equipos.idEquipo}" required  style="visibility:hidden" />
			                	<button class="btn btn-success" type="submit"><Span class = "glyphicon glyphicon-eye-open"></span></button>
			            		</form>
			            	</td>     
			            </tr>
			          </c:forEach>     
			        </table>
				</div>
			</div>
		</div>
	</div>
	<!-- 
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4" id="login" >
				<h1>Equipos</h1>
		        <table class="table table-bordered">
		            <thead>
		            <tr>
		                <th>Nombre</th>
		                <th>Partidos Jugados</th>
		                <th>Número de jugadores</th>
		                <th>Acción</th>
		                <th>Acción</th>
		                
		                
		                
		            </tr>
		            </thead>
		           <c:forEach var="equipos" items="${listaMisEquipos}">
		            <tr>
		                <td><c:out value="${equipos.nombre}"/></td>
		                <td><c:out value="${equipos.nroPartidos}"/></td> 
		                <td><c:out value="${equipos.nroJugadores}"/></td> 
		                <td><form  class="form-horizontal span4 " action="agregarJugador" method = "post">
		                <input type="text"  size="1" id="id" name="idequipo" value="${equipos.idEquipo}" required  style="visibility:hidden" />
		                
		            <button class="btn btn-success" type="submit"><Span class = "glyphicon glyphicon-plus"></span> Agregar Jugador</button>
		            
			        </form> </td>
			           <td><form  class="form-horizontal span4 " action="verJugadoresdelEquipo" method = "post">
		                <input type="text"  size="1" id="id" name="idequipo" value="${equipos.idEquipo}" required  style="visibility:hidden" />
		                
		            <button class="btn btn-success" type="submit"><Span class = "glyphicon glyphicon-eye-open"></span> Ver Jugadores</button>
		            
			        </form> </td>
		                
		            </tr>
		          </c:forEach>     
		        </table>
		        <br>
			            <form action="volver" method = "get" >
					 	<input class="btn btn-warning" value="Volver" type="submit">
					 </form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	 -->
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
    </body>
    
</html>