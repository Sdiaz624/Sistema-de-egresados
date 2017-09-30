<%-- 
    Document   : procesarValidar
    Created on : 2/05/2016, 08:53:04 PM
    Author     : Sergio
--%>

<%@page import="Facade.FAdministrador"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dto.EgresadoDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    int i = Integer.parseInt(request.getParameter("cont"));
    
    ArrayList<EgresadoDto> egre = new ArrayList<EgresadoDto>();
    for (int j = 0; j <= i-1; j++) {
        
        EgresadoDto e = new EgresadoDto();
        String a = "cc" + String.valueOf(j);
        String b = "r" + String.valueOf(j);
        String c = "a" + String.valueOf(j);

        int cc = Integer.parseInt(request.getParameter(a));
        String rechazado = request.getParameter(b);
        String aceptado = request.getParameter(c);

        if (rechazado != null) {
            e.setInvestigacion("RECHAZADO");
            e.setCc(cc);
        } else if (aceptado != null) {
            e.setInvestigacion("INSCRITO");
            e.setCc(cc);
        }

        egre.add(e);

    }

    FAdministrador f = new FAdministrador();
    boolean exis = f.aceptarEgresado(egre);

     if (exis) {

        %><script> alert("Validado Correctamente ");</script>
        <script> location.href="../Administrador.jsp"; </script>
        <%

    }else{
        
          %><script> alert("Error de datos intente de nuevo");</script>
        <script> location.href="../Administrador.jsp"; </script>
        <%
        
    }



%>

