
<%@page import="Facade.FAdministrador"%>


<%-- 
    Document   : generadorReporte
    Created on : 8/05/2014, 04:05:09 PM
    Author     : Luis Miguel Blanco
--%>
<%@page import="com.itextpdf.text.*"%>
<%@page import="com.itextpdf.text.pdf.*"%>
        
<%@ page  language="java" import="java.io.*,java.sql.*,java.awt.Color" contentType="text/html; charset=utf-8"  errorPage=""  %>

<!DOCTYPE html>
       <%
           
    String c = request.getParameter("tipo");       
    String id = "1";
    String rutaLocal = application.getRealPath("");
    response.setContentType("application.pdf");
    Document document = new Document();
    ByteArrayOutputStream buffer = new ByteArrayOutputStream();
    PdfWriter fd = PdfWriter.getInstance(document, response.getOutputStream());
    FAdministrador fa= new FAdministrador();
    if(c.equals("CONSULTAS")){
        fa.reporte(id, document, rutaLocal, fd);
    }else{
        fa.reporte1(id, document, rutaLocal, fd);
    }
    DataOutput output = new DataOutputStream(response.getOutputStream());
    byte[] bytes = buffer.toByteArray();
    response.setContentLength(bytes.length);
    for (int j = 0; j < bytes.length; j++) {
        output.writeByte(bytes[j]);
    }

%>
