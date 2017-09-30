<%-- 
    Document   : LinkEncuesta
    Created on : 8/05/2016, 12:02:49 PM
    Author     : Sergio
--%>

<%@page import="Dto.EncuestaDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Facade.FEgresado"%>

<!DOCTYPE html>
<%

    FEgresado f = new FEgresado();
    EncuestaDto e = f.verEncuesta();
    
    if (e.getEstado().equals("NO ACTIVO")) {

%><br><center><h3> LA ENCUESTA ESTA DESHABILITADA EN ESTE MOMENTO CONSULTE MAS TARDE</h3></center><%}else{ %>

<br><center><h2> DELE CLICK EN EL BOTON PARA DIRIGIRSE A LA ENCUESTA</h2></center>
<br><center><a href="<%=e.getUrl()%>" class="btn btn-default" role="button">Aplicar</a></center>
    

<% }%>
