<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--CABECERA DE LA SESION DEL ADMINISTRADOR-->
<header id="header_outer">
    <div class="container">
        <div class="header_section">
            <div class="logo"><a href="javascript:void(0)"><img src="img/logof.png" alt=""></a></div>
            <nav class="nav" id="nav">
                <ul class="nav navbar-nav">
                    <!--Lista de funcionalidades para el admin-->
                    <li><a href="index.php?accion=recargarInicio" >Inicio</a></li>
                   <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">Equipos</a>
                        <ul class="dropdown-menu">
                            <li><a href="crearequipo">Agregar Equipo</a></li>
                            <li><a href="listarequipos">Listar Equipos</a></li>
                        </ul>
                    </li>
                 
                  
                    <li><button type="button" class="btn btn-info btn-lg" onclick="location='index.jsp'">Cerrar Sesión</button></li>
                </ul>
            </nav>
            <a class="res-nav_click animated wobble wow"  href="javascript:void(0)"><i class="fa-bars"></i></a>
        </div>
    </div>
</header>