<%-- 
    Document   : CambiarContrase�a
    Created on : 1/05/2016, 03:53:35 PM
    Author     : Sergio
--%>

<%
    HttpSession sesion = request.getSession(true);
    String cedula = String.valueOf(session.getAttribute("Usuario"));
    String cc= cedula;
    
     
    %>

<div>
    
    <h2 align="center"> CAMBIAR DE CONTRASE�A</h2>
    <form class="" method="post" action="Egresado/procesarCambio.jsp">
        <input type="hidden" name="cc" value="<%=cc%>">
        <br>
        <p align="center">
            <label id="user_login" >Contrase�a Actual</label>
        </p>
        <p align="center">
            <input class="control-label" type="password" name="contrase1" size="20" required />
        </p>
        <p align="center">
            <label for="user_pass">Nueva Contrase�a<br />
        </p>
        <p align="center">
            <input type="password" name="contrase2" size="20" required />
        </p>
        <p align="center">
            <label for="user_pass">Confirmar Nueva Contrase�a<br />
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
