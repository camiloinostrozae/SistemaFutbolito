<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/estilo.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Futbolito</title>
</head>
<body>
	<center>
		<h1>Login</h1>
        
        <form class="form-horizontal span4 " action="login" method = "POST" >
            
            <div class="control-group">
                <label class="control-label" >Nombre</label>
                <div class="controls">
                    <input class="form-control" type="text" name="usuario" required style="width: 300px"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" >Contraseña</label>
                <div class="controls">
                    <input class="form-control" type="password" name="password" required style="width: 300px"/>
                </div>
            <h4>${mensaje}</h4>
            <br>
            <input class="btn btn-success" value="Ingresar" type="submit">
        </form>
        <br>
        <br>
        <form action="registrarse" method="get">
        	<input type="submit" class="btn btn-danger"  value="Registrarse"/>
        </form>
        </center>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>