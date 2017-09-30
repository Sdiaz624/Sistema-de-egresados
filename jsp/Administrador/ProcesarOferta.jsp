<%-- 
    Document   : ProcesarOferta
    Created on : 5/05/2016, 07:11:45 PM
    Author     : Sergio
--%>

<%@page import="java.sql.Date"%>
<%@page import="Dto.OfertaDto"%>
<%@page import="Facade.FAdministrador"%>
<%
    FAdministrador f = new FAdministrador();
    
    OfertaDto o = new OfertaDto();
    
    o.setCargo(request.getParameter("vacante"));
    o.setCorreo(request.getParameter("correo"));
    o.setDescripcion(request.getParameter("descripcion"));
    o.setFecha(Date.valueOf(request.getParameter("ingreso")));
    o.setNit(request.getParameter("nit"));
    o.setNombre(request.getParameter("nombre"));
    o.setNumero(request.getParameter("telefono"));
    o.setSalario(request.getParameter("salario"));
    
    
    boolean exis= f.registrarOferta(o);
    
     if (exis) {

        %><script> alert("Oferta Guardada Correctamente");</script>
        <script> location.href="../Administrador.jsp"; </script>
        <%

    }else{
        
          %><script> alert("Error de datos intente de nuevo");</script>
        <script> location.href="../Administrador.jsp"; </script>
        <%
        
    }

    
    
    %>

