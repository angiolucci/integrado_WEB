<%-- 
    Document   : resultadoBuscaJournal
    Created on : 29/06/2013, 19:27:57
    Author     : Mercês
--%>

<%@page import="model.Journal"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Resultado Revistas</title>
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
                <li class="active"> Consultar Revistas </li> 
            </ul>  
        </nav> 

        <section class="container-fluid">
            <article class="row-fluid">
                <div class="span3">
                </div>

                <fieldset class="span8" >
                    <legend>  Busca Journal  </legend>
                    <form autocomplete="on" class="span8" id="myform" >
                        
                        <%
                            List<Journal> journal = (List<Journal>) request.getAttribute("listaJournal");
                            if (journal.isEmpty()) {
                        %>
                        
                        <h1>Nenhum Journal foi encontrado. </h1>
                        
                        <% } else {%>
                        
                        <table class="table" id="idTabela">
                            <thead>
                                <tr>
                                    <th>    Título do Journal  </th>
                                    <th>    ISSN  </th>
                                    <th>    Abreviação ISO  </th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for (Journal j : journal) {
                                        out.println("<tr>"
                                                + "<td>" + j.getTitle() + "</td>"
                                                + "<td>" + j.getIssn()+ "</td>"
                                                + "<td>" + j.getIsoAbreviation() + "</td>"
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
                        "sSearch":       "Buscar:",
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
