<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.LinkedList"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
<title>Equipos</title>
</head>
<body>
        <h1>Listado de Equipos</h1>
        <table class="bordered" border="1">
            <thead>
            <tr>
                <th>Nombre</th>
                <th>Partidos Jugados</th>
                <th>Numero de jugadores</th>
                <th>Accion</th>
                
            </tr>
            </thead>
           <c:forEach var="equipos" items="${listaEquipos}">
            <tr>
                <td><c:out value="${equipos.nombre}"/></td>
                <td><c:out value="${equipos.nroPartidos}"/></td> 
                <td><c:out value="${equipos.nroJugadores}"/></td>
                <td>
                <form class="form-horizontal span4 " action="eliminarEquipo" method = "post" >
                <input type="text" id="id" name="id" value="${equipos.idEquipo}" required="requerid" />
            <input class="btn btn-info" value="eliminar" type="submit">
        </form>
                <button type="button" class="btn btn-warning">Modificar</button>
                </td>
                
            </tr>
          </c:forEach>     
        </table>
    </body>
</html>