<%-- 
    Document   : ProcesarEncuesta
    Created on : 7/05/2016, 09:01:18 PM
    Author     : Sergio
--%>

<%@page import="Facade.FAdministrador"%>
<%@page import="Dto.EncuestaDto"%>
<%
    
    java.util.Date utilDate = new java.util.Date();
    java.sql.Date actual = new java.sql.Date(utilDate.getTime());
    String url=request.getParameter("url");
    
    String estado= request.getParameter("estado");;
    
    EncuestaDto e = new EncuestaDto();
    e.setUrl(url);
    e.setEstado(estado);
    e.setFecha(actual);
    boolean exis1=false;
    boolean exis2=false;
    
    FAdministrador f = new FAdministrador();
    
    if(estado.equals("ACTIVO")||estado.equals("NO ACTIVO")){
        
     exis1= f.actualizarEstadoEncuesta(e);
     
    }
    
    if(url!=null){
        
         exis2=f.actualizarUrlEncuesta(e);
         
    }
    
    if(exis1||exis2){
        
        %><script> alert("Cambios Realizados Satisfactoriamente");</script>
        <script> location.href="../Administrador.jsp"; </script>
        <%

    }else{
        
          %><script> alert("Error de datos intente de nuevo");</script>
        <script> location.href="../Administrador.jsp"; </script>
        <%
        
    }

    
    %>