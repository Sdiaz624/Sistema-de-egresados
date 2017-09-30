<%-- 
    Document   : procesarEvento
    Created on : 8/05/2016, 07:43:05 PM
    Author     : Sergio
--%>

<%@page import="Facade.FAdministrador"%>
<%@page import="java.sql.Date"%>

<%

    String titulo = request.getParameter("Titulo");
    java.util.Date utilDate = new java.util.Date();
    java.sql.Date actual = new java.sql.Date(utilDate.getTime());
    String i1 = request.getParameter("i1");
    String i2 = request.getParameter("i2");
    String i3 = request.getParameter("i3");
    String des = request.getParameter("Descripcion");
    System.out.println(titulo+actual+des);
    
   FAdministrador f = new FAdministrador() ;
   boolean exis= f.registrarEvento(titulo, actual, i1, i2, i3,des);
   
   if(exis){
       %><script> alert("Guardado el evento correctamente");</script>
        <script> location.href="../Administrador.jsp"; </script>
        <%
   }else{
       %><script> alert("Error de datos intente de nuevo");</script>
        <script> location.href="../Administrador.jsp"; </script>
        <%
       
   }
   
    
    
    

%>
