
<html lang="en">
    <head>
        <title>Consultar Artigo</title>
        <%@include file="chamadaCSS.jsp" %>   

        <%@page import="model.BuscaAvancada3" %>
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
                <li>    <a href="index.jsp">P�gina Inicial</a> <span class="divider">/</span> </li>
                <li>    <a href="$">Consultar</a> <span class="divider">/</span>  </li>
                <li class="active"> Consulta Avan�ada por MeshTerms, Tipo e Subst�ncias Qu�micas </li> 
            </ul>  
        </nav> 

        <section class="container-fluid">
            <article class="row-fluid">
                <div class="span3">
                </div>

                <fieldset class="span8">
                    <legend>  Busca Avan�ada  </legend>

                    <form class="form-search" method="post" id="busca_avancada_3" name="busca_avancada_3" action="buscaAvancada3">                             
                        Tipo <input type="text" id="tipo" name="tipo" class="input-medium search-query">
                        MeshTerm <input type="text" id="mesh_term" name="mesh_term" class="input-medium search-query">
                        Subst�ncia Quimica <input type="text" id="substancia" name="substancia" class="input-medium search-query">
                        <button type="submit" class="btn">Buscar</button> 
                    </form>



                    <%
                        List<BuscaAvancada3> lista = (List<BuscaAvancada3>) request.getAttribute("resulBA");
                        if (lista.size() == 0) {

                    %>
                    <h2> Nenhum resultado encontrado para esses par�metros. </h2>
                    <% }//fim lista vazia
                    else { //para lista com objetos %>
                    <table id="idTabela" class="table" >
                        <thead>
                            <tr>
                                <th>Titulo</th>
                            </tr>
                        </thead>
                        <% for (BuscaAvancada3 item : lista) {

                        %>
                        <tr>
                            <td><%= item.getTitulo()%> </td>
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


