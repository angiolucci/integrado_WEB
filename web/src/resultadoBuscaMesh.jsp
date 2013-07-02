<%-- 
    Document   : resultadoBuscaMesh
    Created on : 29/06/2013, 21:23:14
    Author     : Mercês
--%>


<%@page import="java.util.List"%>
<%@page import="model.MeshHeading"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Resultado Termos Mesh</title>
        <%@ include file="chamadaCSS.jsp"%>   
    </head>
    
    <body class="container-fluid">
        <section class="row-fluid" id="span12">
            <header class="navbar">
                <%@include file="menu.jsp" %>
            </header>
        </section>


        <nav>
            <ul class="breadcrumb">
                <li>    <a href="index.jsp">Página Inicial</a> <span class="divider">/</span> </li>
                <li>    <a href="index.jsp">Consultar</a> <span class="divider">/</span>  </li>
                <li class="active"> Consultar Mesh Termos </li> 
            </ul>  
        </nav> 

        <section class="container-fluid">
            <article class="row-fluid">
                <div class="span3">
                </div>

                <fieldset class="span8" >
                    <legend>  Busca Mesh Termos  </legend>
                    <form autocomplete="on" class="span8" id="myform" >
                        
                        <%
                            List<MeshHeading> mesh = (List<MeshHeading>) request.getAttribute("listaMesh");
                            if (mesh.isEmpty()) {
                        %>
                        
                        <h1>Nenhum mesh foi encontrado. </h1>
                        
                        <% } else {%>
                        
                        <table class="table" id="idTabela">
                            <thead>
                                <tr>
                                    <th>    Termo Mesh  </th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for (MeshHeading m : mesh) {
                                        out.println("<tr>"
                                                + "<td>" + m.getDescription() + "</td>"                                                
                                                + "</tr>");
                                    }

                                %>                               
                            </tbody>
                        </table>
                        <% }%>
                    </form>
                </fieldset>
            </article>
        </section>
        <script type="text/javascript" charset="utf-8">
            $(document).ready(function() {
                
                $('#idTabela').dataTable({
                    
                "sPaginationType": "full_numbers",
					"bPaginate": true,
					"bJQueryUI": false,
					"iDisplayLenght" : 10,
					
					"oLanguage": {
                        "sProcessing":   "Processando...",
                        "sLengthMenu":   "Mostrar _MENU_ registros",
                        "sZeroRecords":  "N&atilde;o foram encontrados resultados",
                	"sInfo":    "Mostrando de _START_ at&eacute; _END_ de _TOTAL_ registros",
                        "sInfoEmpty":    "Mostrando de 0 at&eacute; 0 de 0 registros",
                        "sInfoFiltered": "(filtrado de _MAX_ registros no total)",
                        "sInfoPostFix":  "  ",
                        "sSearch":       "Refinar:",
                        "sUrl":          "",
                        "oPaginate": {
                            "sFirst":    "    Primeiro    ",
                            "sPrevious": "    Anterior    ",
                            "sNext":     "    Seguinte    ",
                            "sLast":     "    &Uacute;ltimo   "
                        }                                                                              
                     }
                 });
            });
        </script>
        <%@ include file="rodape.jsp"%>
    </body>
</html>

