
<html lang="en">
    <head>
        <title>Consultar Artigo</title>
        <%@include file="chamadaCSS.jsp" %>   

        <%@page import="model.BuscaAvancada2" %>
        <%@page import="java.util.*" %>
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
                <li>    <a href="#">Consultar</a> <span class="divider">/</span>  </li>
                <li class="active"> Consulta Avançada por MeshTerms (ordenado pelas Substâncias Químicas) </li> 
            </ul>  
        </nav> 

        <section class="container-fluid">
            <article class="row-fluid">
                <div class="span3">
                </div>

                <fieldset class="span8">
                    <legend>  Busca Avançada  </legend>

                    <form class="form-search" method="post" id="busca_avancada_2" name="busca_avancada_2" action="buscaAvancada2">
                        MeshTerm <input type="text" id="mesh_term" name="mesh_term" class="input-medium search-query">
                        Qtde Máxima <input type="text" id="qtde" name="qtde" class="input-medium search-query">
                        <button type="submit" class="btn">Buscar</button> 
                    </form>

                    <%
                        List<BuscaAvancada2> lista = (List<BuscaAvancada2>) request.getAttribute("resulBA");
                        if (lista.size() == 0) {

                    %>
                    <h2> Nenhum resultado encontrado para esses parâmetros. </h2>
                    <% }//fim lista vazia
                    else { //para lista com objetos %>
                    <table id="idTabela" class="table" >
                        <thead>
                            <tr>
                                <th>Termo Mesh</th>
                                <th>Qtde.Substância</th>
                            </tr>
                        </thead>
                        <% for (BuscaAvancada2 item : lista) {

                        %>
                        <tr>
                            <td><%= item.getMesh()%> </td>
                            <td><%= item.getQtde() %> </td>
                        </tr>
                        <% }%>

                    </table><% } //fecha else %>

                </fieldset>
            </article>

        </section>


        <script>

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


