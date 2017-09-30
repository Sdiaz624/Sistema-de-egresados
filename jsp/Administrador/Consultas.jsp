<%-- 
    Document   : Consultas
    Created on : 1/05/2016, 03:57:23 PM
    Author     : Sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div>

    <h2 align="center"> CONSULTAS DEL SISTEMA DE EGRESADO</h2>
    <form class="" method="post" >
        
        <br>
        <p align="center">
            <label id="user_login" >Seleccione el item que desea buscar</label>
        </p>
        <p align="center">
        <select name="tipo" id="tipo" class="form-control" required>
                        <option ></option>
                        <option value="SEXO">Por Sexo</option>
                        <option value="EDAD">Por Edad</option>
                        <option value="FECHA GRADO">Por Fecha de Grado</option>
                        <option value="POSTGRADO">Por Postgrado</option>
                        
        </select>
        </p>
        <center>

        <p align="center" class="submit">
            <a onclick="proconsu()" class="btn btn-default" role="button">Consultar</a>
        </p>

        </center>
    </form>


</div>

