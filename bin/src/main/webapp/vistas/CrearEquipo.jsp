
    
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
            		<option value=""></option> 
            		<option value=""></option>
                 </select>
                </div>
            </div>
            <br>
            <input class="btn btn-warning" value="Crear" type="submit">
        </form>
        </center>
    </body>
</html>
