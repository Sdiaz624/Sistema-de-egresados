<%-- 
    Document   : Evento
    Created on : 1/05/2016, 04:03:04 PM
    Author     : Sergio
--%>

<div>
    <h2 align="center"> NUEVO EVENTO REALIZADO</h2>

    <form method="post" action="Administrador/procesarEvento.jsp" >
        
        <div class="form-group">
            <label>Titulo para el evento</label>
            <input type="text" class="form-control" name="Titulo" required >
        </div>
        <div class="form-group">
            <label>Imagen</label>
            <input type="text" class="form-control" name="i1"  placeholder="http://ingsistemas.ufps.edu.co/images/imagenesArticulos/egresados.jpg"   required>
        </div>
        <div class="form-group">
            <label>Imagen</label>
            <input type="text" class="form-control" placeholder="http://ingsistemas.ufps.edu.co/images/imagenesArticulos/egresados.jpg" name="i2" >
        </div>
        <div class="form-group">
            <label>Imagen</label>
            <input type="text" class="form-control" placeholder="http://ingsistemas.ufps.edu.co/images/imagenesArticulos/egresados.jpg" name="i3" >
        </div>
        <div class="form-group">
                <label class="col-md-2 control-label">Descripcion</label>
                <textarea class="col-md-10 from-control" rows="5" name="Descripcion" required></textarea>
        </div>
        <br>
        
        
            <button type="submit" class="btn btn-default">Registrar</button>
        
        
    </form>


</div>

