<%-- 
    Document   : SubirExperiencia
    Created on : 19/04/2016, 08:15:32 PM
    Author     : Sergio
--%>

<%
    HttpSession sesion = request.getSession(true);
    String cedula = String.valueOf(session.getAttribute("Usuario"));
    String cc= cedula;
    
     
    %>

<div>

    <h2 align="center"> COMPARTA SUS EXPERIENCIAS </h2>
    <form method="post" action="Egresado/procesarSubir.jsp">
        <input type="hidden" name="cc" value="<%=cc%>">
        <div class="form-group">
            <label>Titulo para la Experiencia</label>
            <input type="text" class="form-control" name="Titulo" required >
        </div>
        <div class="form-group">
            <label>Url del Video</label>
            <input type="text" class="form-control" name="url" >
        </div>
        <div class="form-group">
                <label class="col-md-2 control-label">Descripcion</label>
                <textarea class="col-md-10 from-control" rows="5" name="Descripcion" required></textarea>
                <br>
        </div>
        <br>
       
            <button type="submit" class="btn btn-default">Subir</button>
       
        
    </form>


</div>





