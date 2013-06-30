<%-- 
    Document   : resultadoBuscaJournalIssue
    Created on : 29/06/2013, 20:50:00
    Author     : Mercês
--%>

<%@page import="model.Journal"%>
<%@page import="model.JournalIssue"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<html lang="en">
    <head>
        <title>Resultado Substâncias Químicas</title>
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
                <li>    <a href="index.html">Página Inicial</a> <span class="divider">/</span> </li>
                <li>    <a href="index.html">Consultar</a> <span class="divider">/</span>  </li>
                <li class="active"> Consultar Journal Issue </li> 
            </ul>  
        </nav> 

        <section class="container-fluid">
            <article class="row-fluid">
                <div class="span3">
                </div>

                <fieldset class="span8" >
                    <legend>  Busca Journal Issue  </legend>
                    <form autocomplete="on" class="span8" id="myform" >
                        
                        <%
                            List<JournalIssue> jissue = (List<JournalIssue>) request.getAttribute("listaJournalIssue");
                            Journal j = new Journal();
                            if (jissue.isEmpty()) {
                        %>
                        
                        <h1>Nenhum Journal Issue foi encontrado. </h1>
                        
                        <% } else {%>
                        
                        <table class="table" id="idTabela">
                            <thead>
                                <tr>
                                    <th>Título do Journal</th>
                                    <th>Edição</th>
                                    <th>ISSN</th>
                                    <th>Volume</th>
                                    <!-- <th>Data de Publicação</th> -->
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for (JournalIssue ji : jissue) {
                                        j = ji.getJournal();
                                        out.println("<tr>"
                                                + "<td>" + j.getTitle() + "</td>"                                                
                                                + "<td>" + ji.getIssue() + "</td>"                                                
                                                + "<td>" + ji.getIssn() + "</td>"                                                
                                                + "<td>" + ji.getVolume() + "</td>"                                                
                                                //+ "<td>" + ji.getPubDate() + "</td>"                                                
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
                            "sLast":     "    &Uacute;ltimo   "        }                                                                              
                     }
                 });
            });
        </script>
        <%@ include file="rodape.jsp"%>
    </body>
</html>




