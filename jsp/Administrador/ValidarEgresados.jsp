<%-- 
    Document   : Actualizar
    Created on : 18/04/2016, 07:13:31 PM
    Author     : Sergio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dto.EgresadoDto"%>
<%@page import="Facade.FAdministrador"%>

<!DOCTYPE html>
<%

    FAdministrador f = new FAdministrador();
    ArrayList<EgresadoDto> e = f.ValidarEgresados();
    String mensaje = "";

    if (e.size() == 0) {

%><center><h3> EL SISTEMA NO TIENE EGRESADOS PENDIENTE PARA VALIDAR</h3></center><%} else {

%>

<h2 align="center"> VALIDAR EGRESADOS REGISTRADOS</h2>
<form method="post" action="Administrador/procesarValidar.jsp">
    <table class="table table-responsive"> 

        <tr>
            <td>
                Codigo
            </td>
            <td>
                Nombre
            </td>
            <td>
                Apellidos
            </td>
            <td>
                Cedula
            </td>
            <td>
                Aceptar
            </td>
            <td>
                Rechazar
            </td>

        </tr>

        <%            int i = 0;
            for (i = 0; i < e.size(); i++) {

        %><tr>
            <td><%=e.get(i).getCodigo()%></td>
            <td><%=e.get(i).getNombre()%></td>
            <td><%=e.get(i).getPapellido() + "  " + e.get(i).getSapellido()%></td>
            <td><%=e.get(i).getCc()%></td>
            <td>
        <Center><input type="checkbox" name="a<%=i%>"value="INSCRITO"></Center>
        </td>
        <td>
        <Center><input type="checkbox" name="r<%=i%>"value="RECHAZADO"></Center>
        </td> 
        <input type="hidden" name="cc<%=i%>" value="<%=e.get(i).getCc()%>">
        </tr><%

            }
        %><input type="hidden" name="cont" value="<%=e.size()%>">

    </table>

    
    <center>
        <br>
        <input type="submit" class="btn btn-default">    
        </center>
</form>
<%
    }


%>



