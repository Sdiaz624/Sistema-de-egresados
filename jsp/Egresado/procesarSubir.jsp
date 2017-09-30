<%-- 
    Document   : procesarSubir
    Created on : 1/05/2016, 12:47:46 AM
    Author     : Sergio
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.sql.Date"%>
<%@page import="Dto.VideoDto"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Calendar"%>
<%@page import="Facade.FEgresado"%>

<%

    int cc = Integer.parseInt(request.getParameter("cc"));
  
    java.util.Date utilDate = new java.util.Date();
    java.sql.Date actual = new java.sql.Date(utilDate.getTime());
    
    String titulo = request.getParameter("Titulo");
    
    String url = request.getParameter("url");
    String descripcion = request.getParameter("Descripcion");
    
 
    VideoDto v = new VideoDto();

    v.setDescripcion(descripcion);
    v.setFecha(actual);
    v.setUrl(url);
    v.setTitulo(titulo);
    v.setCedula(cc);
    FEgresado f = new FEgresado();
    boolean existe = f.subir(v);
    
    if (existe) {

        %><script> alert("Video Subido Correctamente");</script>
        <script> location.href="../Egresado.jsp"; </script>
        <%

    }else{
        
          %><script> alert("Error de datos intente de nuevo");</script>
        <script> location.href="../Egresado.jsp"; </script>
        <%
        
    }


%>

