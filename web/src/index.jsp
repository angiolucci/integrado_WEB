<%@page contentType="text/html" pageEncoding="UTF-8" %> 
<%@page import="java.util.LinkedList"%>
<%@page import="model.PubMedArticle"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Desenvolvimento Web - PubMed</title>
  <%@include file="chamadaCSS.jsp" %>
</head>

<body class="container-fluid">
    <section class="row-fluid" id="span12">
        <header class="navbar">
            <%@include file="menu.jsp" %>
       </header>
                    
			<div class="carousel slide" id="carousel-666326">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-666326">    </li>
					<li data-slide-to="1" data-target="#carousel-666326">   </li>
					<li data-slide-to="2" data-target="#carousel-666326">   </li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="img/ima2.jpg">
						<div class="carousel-caption">
							<h4>    PubMed  </h4>
							<p> PubMed comprises over 22 million citations for biomedical literature from MEDLINE, life science journals, and online books.     </p>
						</div>
					</div>
					<div class="item">
                                            <img alt="" src="img/ima1.jpg">
						<div class="carousel-caption">
							<h4>    PubMed and NCBI </h4>
							<p> PubMed also provides access to additional relevant web sites and links to the other NCBI molecular biology resources.   </p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="img/ima3.jpg">
						<div class="carousel-caption">
							<h4>    Citations and Abstracts </h4>
							<p> PubMed citations and abstracts include the fields of biomedicine and health, covering portions of the life sciences, behavioral sciences, chemical sciences, and bioengineering.    </p>
						</div>
					</div>
				</div> 
                            <a data-slide="prev" href="#carousel-666326" class="left carousel-control"></a> <a data-slide="next" href="#carousel-666326" class="right carousel-control"></a>
			</div>                                                                                
    </section>
    <ul class="breadcrumb">        				
        <li class="active"> Página Inicial </li> 
    </ul>
    
	<section class="row-fluid">
		<nav class="span3">
			<ul class="nav nav-list">
				<li class="nav-header"> Acesso Rápido </li>
                                <li class="active"> <a href="index.jsp">Página Inicial</a>    </li>
                                <% if (userType != 25) { %>
                                    <% if( (userType >= 50) ){ %>
                                    <li>    <a href="registerArticle.jsp">
                                    <% }else { %>
                                    <li>    <a href="logIn.jsp">
                                    <% } %>
                                    Cadastro de Artigos</a> </li>
                                <% } %>
				<li class="nav-header"> Outras Opções </li>
                                <% if( userType != 0){ %>
				<li>    <a href="profile.jsp">Visualizar Perfil</a> </li>
                                <% } %>
				<li class="divider">    </li>
				<li>    <a href="ajuda.jsp">Ajuda</a>    </li>
			</ul>
		</nav>
		<article class="span8">
			<form class="form-search">                             
                            <input type="text" name="titulo" id="titulo" class="input-xxlarge search-query"><button type="button" id="artig" class="btn" name="ar"  > Buscar</button>
			         
                        
                        </form>
                        <table id="tt" name="tt"class="table">
                            
                    <thead>
                    <tr>    <th>  Artigos encontrados  </th>  
                    </thead>
                    <tbody id="listagem" name="listagem">
                        
                        
                        
                        
                    </tbody>
                            
                            
                                
                        </table>
                    
		</article>
	</section>
                                
                                
                      
                                
                                
                                
              <script>  
                $(document).ready(function(){
        
             $("#titulo").click(function(){
             $('#tt').dataTable().fnDestroy();
             $('#listagem').html("");
             });
             
             
                $("#artig").click(function(){    
                   if((($("#titulo").val()) !== '')){
                         
                        $.ajax({
                        type: "GET",
                        url: "buscaArtigo",
                        dataType: "html",
                        data: {ttl: $("#titulo").val() }
                        }).done(function(data){
                        $('#listagem').html(data);
                        $('#tt').dataTable({
                            
                        "bDestroy":true,
                    
                        
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
            
                         
                   }
                   
                });
               
                
                
               }); 
                
              </script>
        
            <%@ include file="rodape.jsp"%>
</body>
</html>
