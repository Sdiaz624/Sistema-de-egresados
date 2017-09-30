<%-- 
    Document   : Reporte
    Created on : 1/05/2016, 03:57:34 PM
    Author     : Sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div>

    <h2 align="center"> GENERAR REPORTES</h2>
    <form class="" method="post" action="Administrador/generadorResporte.jsp">

        <br>
        <p align="center">
            <label id="user_login" >Seleccione el item que desea buscar</label>
        </p>
        <p align="center">
            <select name="tipo" id="tipo" class="form-control" required>
                <option ></option>
                <option value="CONSULTAS">Consultas</option>
                <option value="EGRESADOS">Egresados</option>
            </select>
        </p>

        <center>  
            <p align="center" class="submit">
                <button type="submit" class="btn btn-default" value="registrar" >Generar</button>
            </p>
        </center>
    </form>


</div>

