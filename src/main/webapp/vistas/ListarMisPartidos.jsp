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
	 <jsp:include page="headerUsuario.jsp" /> 
	
	<div  class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="container contenedor">
					<h2>Partidos</h2>
			        <table class="table table-hover">
			            <thead>
			            <tr>
			                <th>Fecha</th>
			                <th>Hora de Inicio</th>
			                <th>Hora de Termino</th>
			                <th>Estado</th>
			                <th>Goles de Equipo 1</th>
			                <th>Goles de Equipo 2</th>
			                <th>Equipo 1</th>
			                <th>Equipo 2</th>
			                <th>Cancha</th>
			                <th>Usuario</th>
			                <th>Torneo</th>
			               
			                
			            </tr>
			            </thead>
			            <c:forEach var="partidos" items="${misPartidos}">
			            <tr>
			                <td><c:out value="${partidos.fecha}"/></td>
			                <td><c:out value="${partidos.horaInicio}"/></td> 
			                <td><c:out value="${partidos.horaFin}"/></td>
			                <td><c:out value="${partidos.estado}"/></td>
			                <td><c:out value="${partidos.golesEquipo1}"/></td> 
			                <td><c:out value="${partidos.golesEquipo2}"/></td>
			                <td><c:out value="${partidos.idEquipo1}"/></td>
			                <td><c:out value="${partidos.idEquipo2}"/></td> 
			                <td><c:out value="${partidos.idCancha}"/></td>
			                <td><c:out value="${user.nombre} ${user.apellido}"/></td>
			                <td><c:out value="${partidos.idTorneo}"/></td>
			                 <td>
				                <form  class="form-horizontal" action="" method = "get" onSubmit="return enviar()">
					                <input type="text"  size="1" id="id" name="id" value="${partidos.idPartido}" required="requerid"  style="visibility:hidden" />
					                 <input type="text"  size="1" id="id" name="idEquipo1" value="${partidos.idEquipo1}" required="requerid"  style="visibility:hidden" />
					                  <input type="text"  size="1" id="id" name="idEquipo2" value="${partidos.idEquipo2}" required="requerid"  style="visibility:hidden" />
					            	 <button class="btn btn-info" type="submit"><Span class = "glyphicon glyphicon-pencil"></Span> Modificar</button>
				            	</form>
				             </td>
			                 <td>
				                <form  class="form-horizontal" action="agregarResultados" method = "post" onSubmit="return enviar()">
					                <input type="text"  size="1" id="id" name="id" value="${partidos.idPartido}" required="requerid"  style="visibility:hidden" />
					                <input type="text"  size="1" id="id" name="idEquipo1" value="${partidos.idEquipo1}" required="requerid"  style="visibility:hidden" />
					                  <input type="text"  size="1" id="id" name="idEquipo2" value="${partidos.idEquipo2}" required="requerid"  style="visibility:hidden" />
					            	<button class="btn btn-danger" type="submit"><Span class = "glyphicon glyphicon-pencil"></Span> Agregar Resultados</button>
				            	</form>
				           
				             </td>
			                
			            </tr>
			          	</c:forEach>     
			        </table>
		            <form action="" method = "get" >
					 	<input class="btn btn-warning" value="Volver" type="submit">
					</form>
					<br>
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