<%-- 
    Document   : resultadoBuscaArtigo
    Created on : 30/06/2013, 21:08:47
    Author     : Mercês
--%>

<%@page import="model.Journal"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="model.PubMedArticle"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Consultar Artigo</title>
   <%@include file="chamadaCSS.jsp" %>   
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
	<li class="active"> Resultado Consulta Artigo </li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span3">
        </div>
          
          <fieldset class="span8">
          <legend>  Busca do Artigo  </legend>
          <form autocomplete="on" class="span8" id="myform">
          <%
                            List<PubMedArticle> art = (List<PubMedArticle>) request.getAttribute("listaArtigo");                            
                            if (art.isEmpty()) {
           %>
          <h1>Nenhum Artigo foi encontrado. </h1>
                        
          <% } else {%>
                        
          
          
          <table class="table" id="idTabela">
                                 <thead>
					<tr>
                                                <th>Título</th>
                                                <th>Affiliation</th>
						<th>Article ID</th>
						
					</tr>
				</thead>
				<tbody>
                                    
                                    <%
                                        for (PubMedArticle p : art) {                                            
                                            out.println("<tr>"                                                    
                                                + "<td>" + p.getTitle() + "</td>"
                                                + "<td>" + p.getAffliation()+ "</td>"
                                                + "<td>" + p.getArticleID() + "</td>"
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
      
       
      <script>
          
          $(document).ready(function(){
              
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


