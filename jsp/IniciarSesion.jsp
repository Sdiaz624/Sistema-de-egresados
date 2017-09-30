<%-- 
    Document   : IniciarSesion
    Created on : 14/04/2016, 08:48:31 PM
    Author     : Sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<div>    
    <h2 align="center"> INICIO DE SESION</h2>
    <form class="form-group" name="loginform" id="loginform" action="jsp/procesarSesion.jsp" method="POST">

        <p align="center">
            <img class="img-circle img2" src="images/InicioSesion.jpg" alt="Iniciar Sesion">
        </p>
        <br>
        <p align="center">
            <label id="user_login" >Nombre De Usuario</label>
        </p>
        <p align="center">
            <input class="control-label" type="text" name="username" id="username" class="input" value="" size="20" required />
        </p>
        <p align="center">
            <label for="user_pass">Contraseña<br />
        </p>
        <p align="center">
            <input type="password" name="password" id="password" class="input" value="" size="20" required />
        </p>

        <p align="center" class="submit">
            <input type="submit" name="login" class="btn btn-default" value="Entrar" />
        </p>
    </form>
    <p  align="center" class="regtext">No estas registrado? <a  onclick="registrarEgresado()">Registrate Aquí</a>!</p>
    <p  align="center" class="regtext">Olvido su contraseña? <a  onclick="recuperar()">Recordar Contraseña</a>!</p>
</div>

