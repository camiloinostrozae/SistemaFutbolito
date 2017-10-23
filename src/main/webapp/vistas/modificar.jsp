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
<<<<<<< HEAD
   
        <br>
    <center>
        <h3>Actualizar Equipo</h3>
        <br>
        
        <form class="form-horizontal span4 " action="actualizar" method = "POST" >
            <div class="control-group">
                <label class="control-label" >Nombre Equipo</label>
                <div class="controls">
                    <input class="form-control" type="text" name="nombreEquipo" value="${requestScope.nombre}" required style="width: 300px"/>
                </div>
            </div>
             <div class="control-group">
                <label class="control-label" >N�mero de Partidos</label>
                <div class="controls">
                    <input class="form-control" type="number" name="numPartidos" value="${requestScope.partidos}" required style="width: 300px"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" >N�mero de Jugadores</label>
                <div class="controls">
                    <input class="form-control" type="number" name="numJugadores" value="${requestScope.numJugadores}" required style="width: 300px"/>
                	<input type="text" id="id" name="id" value="${requestScope.id}" required="requerid"  style="visibility:hidden" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" >Usuario</label>
                <div class="controls">
                <select class="form-control" name="usuario" style="width: 300px">
                
                <option value="${requestScope.usuario}">${requestScope.usuario}</option> 
				<%
                     UsuarioDAO user = new UsuarioDAO();
				     LinkedList<UsuarioTO> userto = new LinkedList<>();
				     userto = user.listarNombresUsuarios();
				     if(userto != null){
			                for (int i = 0; i < userto.size(); i++) {

			                    UsuarioTO usuario = userto.get(i);
                %>
            	<option value="<%=usuario.getId()%>"><%=usuario.getNombre()+" "+usuario.getApellido()%></option>
                 <%}} %>
                 </select>
                 
                </div>
            </div>
            <br>
            <br>
            <input class="btn btn-warning" value="Actualizar Equipo" type="submit">
        </form>
        </center>

   	<div class="color-fondo-login">
	    <div class="imagen-fondo"></div>
	</div>
    <div  class="container-fluid">
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4" id="login" >
			<center>
			<h3>Actualizar Equipo</h3>
	        <br>
	        
	        <form class="form-horizontal span4 " action="actualizar" method = "POST" >
	            <div class="control-group">
	                <label class="control-label" >Nombre Equipo</label>
	                <div class="controls">
	                    <input class="form-control" type="text" name="nombreEquipo" value="${requestScope.nombre}" required style="width: 300px"/>
	                </div>
	            </div>
	             <div class="control-group">
	                <label class="control-label" >N�mero de Partidos</label>
	                <div class="controls">
	                    <input class="form-control" type="number" name="numPartidos" value="${requestScope.partidos}" required style="width: 300px"/>
	                </div>
	            </div>
	            <div class="control-group">
	                <label class="control-label" >N�mero de Jugadores</label>
	                <div class="controls">
	                    <input class="form-control" type="number" name="numJugadores" value="${requestScope.numJugadores}" required style="width: 300px"/>
	                	<input type="text" id="id" name="id" value="${requestScope.id}" required="requerid"  style="visibility:hidden" />
	                </div>
	            </div>
	            <div class="control-group">
	                <label class="control-label" >Usuario</label>
	                <div class="controls">
	                <select class="form-control" name="usuario" style="width: 300px">
	                
	                <option value="${requestScope.usuario}">${requestScope.usuario}</option> 
					<%
					 
					
					     userto = user.listarNombresUsuarios();
					     if(userto != null){
				                for (int i = 0; i < userto.size(); i++) {
				                    UsuarioTO usuario = userto.get(i);
	                %>
	            	<option value="<%=usuario.getId()%>"><%=usuario.getNombre()+" "+usuario.getApellido()%></option>
	                 <%}} %>
	                 </select>
	                 <input type="text" id="idUser" name="idUser" value="${requestScope.idUser}" required="requerid"  style="visibility:hidden" />
	                 
	                </div>
	            </div>
	            <br>
	            <br>
	            <input class="btn btn-warning" value="Actualizar Equipo" type="submit">
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