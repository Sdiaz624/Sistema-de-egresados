<%-- 
    Document   : procesarCorreo
    Created on : 11/05/2016, 08:03:38 PM
    Author     : Sergio
--%>

<%@page import="Facade.FAdministrador"%>
<%

    String asunto=request.getParameter("asunto");
    String cuerpo=request.getParameter("cuerpo");
    
   FAdministrador f = new FAdministrador();
   boolean a =f.enviarCorreo(asunto, cuerpo);

    if(a){
        
        %><script> alert("Consulte su Correo Electronico");</script>
        <script> location.href="../Administrador.jsp"; </script>
        <%
        
    }else{
            %><script> alert("Error en informacion");</script> 
            <script> location.href="../Administrador.jsp"; </script><%
         }



%>
