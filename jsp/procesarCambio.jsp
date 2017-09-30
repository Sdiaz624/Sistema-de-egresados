<%-- 
    Document   : procesarCambio
    Created on : 8/05/2016, 03:46:32 PM
    Author     : Sergio
--%>

<%@page import="Facade.FEgresado"%>
<%

    String correo=request.getParameter("correo");
    String cc=request.getParameter("cc");
    
   FEgresado f = new FEgresado();
   boolean a =f.recuperar(cc, correo);

    if(a){
        
        %><script> alert("Consulte su Correo Electronico");</script>
        <script> location.href="../index.html"; </script>
        <%
        
    }else{
            %><script> alert("Error en informacion");</script> 
            <script> location.href="../index.html"; </script><%
         }



%>