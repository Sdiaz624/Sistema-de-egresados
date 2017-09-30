<%-- 
    Document   : ExperienciasAprendidas
    Created on : 19/04/2016, 07:49:38 PM
    Author     : Sergio
--%>

<%@page import="Dto.VideoDto"%>
<%@page import="Facade.FEgresado"%>
<%

    FEgresado e = new FEgresado();
    VideoDto[] vi = e.videos();
    

%>


<div>
    <h2 align="center"> EXPERIENCIAS APRENDIDAS</h2>
    <div class="box-section video-section triggerAnimation animated" data-animate="flipInX">
        
        <div class="row">
            <% for (int i = 0; i < vi.length; i++) {%>
            <div class="col-md-6">
                <!-- youtube -->
                <h3><%= vi[i].getTitulo()%></h3>
                <iframe class="videoembed" src="<%= vi[i].getUrl()%>" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>
                <!-- End youtube -->
                <p><%= vi[i].getDescripcion()%></p>
            </div>
            <%}%>
        </div>
        
    </div>
</div>




