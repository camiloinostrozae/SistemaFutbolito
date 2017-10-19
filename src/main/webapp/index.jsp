<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<title>Futbolito</title>
</head>
<body>
	<center>
		<h1>Login</h1>
        
        <form action="login" method="POST">
            <table>
            <tr>
            <td><label>Nombre: </label></td>
            <td><input type="text" name="usuario" /></td>
            </tr>
            <tr>
            <td><label>Contraseña: </label></td>
            <td><input type="password" name="password"/></td>
            </tr>
            
            </table>
            <h4>${mensaje}</h4>
            <br>
            <input type="submit" value="Enviar"/>
        </form>
        <br>
        <form action="registrarse" method="get">
        <input type="submit" value="Registrarse"/>
        </form>
        </center>



</body>
</html>