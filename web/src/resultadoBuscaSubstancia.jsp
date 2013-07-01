<%-- 
    Document   : buscaSubstancia
    Created on : 29/06/2013, 01:48:27
    Author     : Mercês
--%>
<%@page import="java.util.List"%>
<%@page import="model.Substance"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                <li>    <a href="index.jsp">Página Inicial</a> <span class="divider">/</span> </li>
                <li>    <a href="index.jsp">Consultar</a> <span class="divider">/</span>  </li>
                <li class="active"> Consultar Substâncias Químicas </li> 
            </ul>  
        </nav> 

        <section class="container-fluid">
            <article class="row-fluid">
                <div class="span3">
                </div>

                <fieldset class="span8" >
                    <legend>  Busca Substâncias  </legend>
                    <form autocomplete="on" class="span10" id="myform" >
                        
                        <%
                            List<Substance> substancia = (List<Substance>) request.getAttribute("listaSubstance");
                            if (substancia.isEmpty()) {
                        %>
                        
                        <h1>Nenhuma substancia foi encontrada. </h1>
                        
                        <% } else {%>
                        
                        <table class="table" id="idTabela">
                            <thead>
                                <tr><th>    Nome da Substância  </th></tr>
                            </thead>
                            <tbody>
                                <%
                                    for (Substance s : substancia) {
                                        out.println("<tr>"
                                                + "<td>" + s.getNameOfSubstance() + "</td>"                                                
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



