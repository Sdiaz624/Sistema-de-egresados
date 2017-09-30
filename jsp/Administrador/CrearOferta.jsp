<%-- 
    Document   : CrearOferta
    Created on : 1/05/2016, 03:55:05 PM
    Author     : Sergio
--%>


<div>
    <h2 align="center"> NUEVA OFERTA LABORAL</h2>
    <form class="form-horizontal" method="post" action="Administrador/ProcesarOferta.jsp"  >
        <br>

        <div class="form-group">
            <label class="col-md-2 control-label tabsRes  Altura">Nit</label>
            <div class="col-md-10">
                <input type="text" class="form-control" name="nit" required>
            </div>
        </div>

        <div class="form-group">
            <label  class="col-md-2 control-label">Razon Social</label>
            <div class="col-md-10">
                <input type="text" class="form-control " name="nombre" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label">Vacante</label>
            <div class="col-md-10">
                <input type="text" class="form-control" name="vacante" required >
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label">Salario</label>
            <div class="col-md-10">
                <input type="number" class="form-control" name="salario" required>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label">Fecha de Contratacion</label>
            <div class="col-md-10">
                <input type="date" class="form-control" name="ingreso"  required>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label tabsRes  Altura">Correo</label>
            <div class="col-md-10">
                <input type="email" class="form-control" name="correo" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label tabsRes  Altura">Telefono</label>
            <div class="col-md-10">
                <input type="number" class="form-control" name="telefono" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label">Descripcion</label>
            <textarea class="col-md-10" rows="5" name="descripcion" required></textarea>
        </div>
        <center>
            <br>
            <button type="submit" class="btn btn-default" value="registrar" >Guardar</button>
        </center>
        


    </form>



</div>
