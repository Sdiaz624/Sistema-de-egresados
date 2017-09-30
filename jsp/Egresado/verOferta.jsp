<%-- 
    Document   : verOferta
    Created on : 5/05/2016, 08:27:56 PM
    Author     : Sergio
--%>

<%

    String nit = request.getParameter("nit");
    String nombre = request.getParameter("nombre");
    String cargo = request.getParameter("cargo");
    String salario = request.getParameter("salario");
    String descrip = request.getParameter("descripcion");
    String fecha = request.getParameter("fecha");
    String correo = request.getParameter("correo");
    String telefono = request.getParameter("telefono");
%>

<h2><%=nombre%></h2>
<h5>Nit: <%=nit%></h5>
<table class="table table-responsive"> 

    <tr>
        <td>
            Vacante
        </td>
        <td>
            La empresa <%=nombre%> abre convocatorias para el cargo de <%=cargo%>
        </td>
    </tr><tr>
        <td>
            Salario
        </td>
        <td>
            Ofrece como salario base <%=salario%>
        </td>
    </tr><tr>
        <td>
            Fecha de Contratacion
        </td>
        <td>
            <%=fecha%>
        </td>
    </tr><tr>
        <td>
            Correo
        </td>
        <td>
            <%=correo%>
        </td>
    </tr><tr>
        <td>
            Telefono
        </td>
        <td>
            <%=telefono%>
        </td>
    </tr><tr>
        <td>
            Descripcion de la vacante
        </td>
        <td>
            <%=descrip%>
        </td>
    </tr>





</table>


