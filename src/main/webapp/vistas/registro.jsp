<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <title>futbolito</title>
    </head>
    <body>
        <br>
    <center>
        <h3>Registrar Usuario</h3>
        <br>
        
        <form class="form-horizontal span4 " action="ingresar" method = "POST" >
            <div class="control-group">
                <label class="control-label" >Nombre</label>
                <div class="controls">
                    <input class="form-control" type="text" name="nombre" required style="width: 300px"/>
                </div>
            </div>
             <div class="control-group">
                <label class="control-label" >Apellido</label>
                <div class="controls">
                    <input class="form-control" type="text" name="apellido" required style="width: 300px"/>

                </div>
            </div>
            <div class="control-group">
                <label class="control-label" >Email</label>
                <div class="controls">
                    <input class="form-control" type="email" name="email" required style="width: 300px"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" >Tel�fono</label>
                <div class="controls">
                    <input class="form-control" type="tel" name="telefono" required style="width: 300px"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" >Contrase�a</label>
                <div class="controls">
                    <input class="form-control" type="password" name="pass" required style="width: 300px" maxlength="8"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" >Rol</label>
                <div class="controls">
                  <select class="form-control" name="rol" style="width: 300px">
                    <option value="">Seleccione Rol</option> 
            		<option value="1">Administrador</option> 
            		<option value="2">Normal</option>
                 </select>
                </div>
            </div>
            <br>
            <br>
            <input class="btn btn-success" value="Registrar" type="submit">
        </form>
        </center>
    </body>
</html>
