<%-- 
    Document   : CambiarContraseña
    Created on : 1/05/2016, 03:53:35 PM
    Author     : Sergio
--%>

<%
    HttpSession sesion = request.getSession(true);
    String cedula = String.valueOf(session.getAttribute("Usuario"));
    String cc= cedula;
    
     
    %>

<div>
    
    <h2 align="center"> CAMBIAR DE CONTRASEÑA</h2>
    <form class="" method="post" action="Egresado/procesarCambio.jsp">
        <input type="hidden" name="cc" value="<%=cc%>">
        <br>
        <p align="center">
            <label id="user_login" >Contraseña Actual</label>
        </p>
        <p align="center">
            <input class="control-label" type="password" name="contrase1" size="20" required />
        </p>
        <p align="center">
            <label for="user_pass">Nueva Contraseña<br />
        </p>
        <p align="center">
            <input type="password" name="contrase2" size="20" required />
        </p>
        <p align="center">
            <label for="user_pass">Confirmar Nueva Contraseña<br />
        </p>
        
        <p align="center">
            <input type="password" name="contrase3" size="20" required />
        </p>
        
        <script>
            
        </script>    

       
        <center> <p align="center" class="submit">
            <input type="submit" name="login" class="btn btn-default" value="cambiar" />
        </p>
        </center>
        
    </form>


</div>
