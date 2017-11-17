<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.futbolito.to.UsuarioTO"%>
    <%@page import="com.futbolito.persistencia.UsuarioDAO"%>
    <%@page import="org.springframework.ui.Model"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="java.util.LinkedList"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
				<center>
					<h3>Agregar Jugador</h3>
			       
			        <form class="form-horizontal span4 " action="agregarJugadores" method = "POST" onSubmit="return enviar()">
			            <div class="control-group">
			                <label class="control-label" >Nombre Jugador</label>
			                <div class="controls">
			                    <input class="form-control" type="text" name="nombreJugador" required style="width: 300px"/>
			                </div>
			            </div>
			             <div class="control-group">
			                <label class="control-label" >Apellido Jugador</label>
			                <div class="controls">
			                    <input class="form-control" type="text" name="apellidoJugador" required style="width: 300px"/>
			                </div>
			            </div>
			            <br>
			            <br>
			            <input type="hidden" name ="idequipo" value="${idEquipo}"/>
			            <input class="btn btn-warning" value="Agregar" type="submit" />
			            </form>
			            <br>
			            <form action="listarequiposPropios" method = "post" >
					 	<input class="btn btn-info" value="Volver" type="submit">
					 </form>
			        
				</center>

			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	<script type="text/javascript"> 
	function enviar(){
		alert("Jugador Agregado con éxito");
		return true;
	}
	</script>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
    </body>
</html>