<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Ajuda</title>
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
	<li> <a href="ajuda.jsp">Ajuda</a> <span class="divider">/</span> </li>
        <li class="active"> Consulta </li>
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
        <div class="span4">
            <legend>Consulta</legend>
            
            <p>No sistema PubMed, qualquer usuário pode realizar consultas de 
                artigos, revistas, edições de revistas, termos Mesh e substâncias químicas
                da base de dados, seguindo os seguintes passos:</p>

            <p> 1- Selecione o tipo de dado que deseja consultar (artigo PubMed, revista,
                edição de revista ou termo Mesh) no submenu "Consultar" do cabeçalho.<br/>
            2- Digite o título da informação na caixa de texto ao lado do botão "Buscar Título"
            e depois clique nesse botão. Os resultados da consulta serão exibidos na tabela abaixo.</p>
            
            <a href="ajuda.jsp">Voltar ao conteúdo da ajuda</a>
        </div>    
      </article>
    </section>
      
       
      <script>
          
          $(document).ready(function(){
              
            
         });
      </script>
          <%@ include file="rodape.jsp"%>     
    </body>
</html>
