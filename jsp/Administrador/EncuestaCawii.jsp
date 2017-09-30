<%-- 
    Document   : EncuestaCawii
    Created on : 1/05/2016, 03:57:12 PM
    Author     : Sergio
--%>


<div>

    <h2>ACTUALIZACION DE ENCUESTA CAWI</h2>

    <form method="post" action="Administrador/ProcesarEncuesta.jsp">

        <div class="form-group">
            <select class="form-control" name="estado" required>
                <option value="nada"></option>
                <option value="ACTIVO">Activo</option>
                <option value="NO ACTIVO">No Activo</option>
            </select>
        </div>
        <div class="form-group">
            <label>Url Encuesta Cawi</label>
            <input type="text" class="form-control" name="url" >
        </div>

        <br>
        <center>
            <br>
            <button type="submit" class="btn btn-default">Actualizar</button>
        </center>
        
    </form>


</div>

