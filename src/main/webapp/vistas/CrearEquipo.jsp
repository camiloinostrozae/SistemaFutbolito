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
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <title>futbolito</title>
    </head>
    <body>
        <br>
    <center>
        <h3>Crear Equipo</h3>
        <br>
        
        <form class="form-horizontal span4 " action="crear" method = "POST" >
            <div class="control-group">
                <label class="control-label" >Nombre Equipo</label>
                <div class="controls">
                    <input class="form-control" type="text" name="nombreEquipo" required style="width: 300px"/>
                </div>
            </div>
             <div class="control-group">
                <label class="control-label" >N�mero de Partidos</label>
                <div class="controls">
                    <input class="form-control" type="number" name="numPartidos" required style="width: 300px"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" >N�mero de Jugadores</label>
                <div class="controls">
                    <input class="form-control" type="number" name="numJugadores" required style="width: 300px"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" >Usuario</label>
                <div class="controls">
                <select class="form-control" name="usuario" style="width: 300px">
                <option value="">Usuario a Cargo</option> 
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
            <input class="btn btn-warning" value="Crear Equipo" type="submit">
        </form>
        </center>
    </body>
</html>