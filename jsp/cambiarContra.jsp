<%-- 
    Document   : cambiarContraseña
    Created on : 8/05/2016, 03:41:46 PM
    Author     : Sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


    <form class="" method="post" action="jsp/procesarCambio.jsp">
        
        <h2 align="center"> Recuperar Contraseña</h2>
        <p align="center">A su correo Electronico llegara la informacion pertinente</p>
        <p align="center">
            <label id="user_login" >Numero de Cedula</label>
        </p>
        <p align="center">
            <input class="control-label" type="number" name="cc" size="20" required />
        </p>
        <p align="center">
            <label  class="control-label"for="user_pass">Correo Electronico<br />
        </p>
        <p align="center">
            <input class="control-label" type="email" name="correo"  required />
        </p>
        
        <p align="center" class="submit">
            <input type="submit" name="login" class="btn btn-default" value="Enviar" />
        </p>
        
    </form>