<%-- 
    Document   : procesarCambio
    Created on : 8/05/2016, 01:20:55 PM
    Author     : Sergio
--%>

<%@page import="Facade.FEgresado"%>
<%

    String contrase1=request.getParameter("contrase1");
    String contrase2=request.getParameter("contrase2");
    String contrase3=request.getParameter("contrase3");
    int id=Integer.parseInt(request.getParameter("cc"));
    System.out.println("esta es la cedula="+id);

    if(!contrase2.equals(contrase3)){
        
        %><script> alert("Existe un error de contraseñas intente de nuevo");</script>
        <script> location.href="../Egresado.jsp"; </script>
        <%
        
    }else{
        
        FEgresado f = new FEgresado();
        boolean exis = f.cambiarContraseña(id,contrase3,contrase1);
        
        if(exis){
        
            %><script> alert("Cambio Exitoso");</script> 
            <script> location.href="../Egresado.jsp"; </script><%
        }else{
            
            %><script> alert("Error interno, intente mas tarde");</script> 
            <script> location.href="../Egresado.jsp"; </script><%
        }
    }

%>
