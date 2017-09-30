<%-- 
    Document   : EnviarCorreo
    Created on : 11/05/2016, 08:02:11 PM
    Author     : Sergio
--%>

<div>
    <h2 align="center"> ENVIAR CORREO ELECTRONICO </h2>
    <form class="form-horizontal" method="post" action="Administrador/procesarCorreo.jsp"  >
        <br>

        <div class="form-group">
            <label class="col-md-2 control-label tabsRes  Altura">Asunto</label>
            <div class="col-md-10">
                <input type="text" class="form-control" name="asunto" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label">Cuerpo del mensaje</label>
            <textarea class="col-md-10" rows="5" name="cuerpo" required></textarea>
        </div>
        
        <center>
            <br>
            <button type="submit" class="btn btn-default" value="" >Enviar</button>
        </center>

    </form>



</div>

