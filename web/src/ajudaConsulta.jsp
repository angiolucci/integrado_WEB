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
	<li>    <a href="index.jsp">P�gina Inicial</a> <span class="divider">/</span> </li>           
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
            
            <p>No sistema PubMed, qualquer usu�rio pode realizar consultas de 
                artigos, revistas, edi��es de revistas, termos Mesh e subst�ncias qu�micas
                da base de dados, seguindo os seguintes passos:</p>

            <p> 1- Selecione o tipo de dado que deseja consultar (artigo PubMed, revista,
                edi��o de revista ou termo Mesh) no submenu "Consultar" do cabe�alho.<br/>
            2- Digite o t�tulo da informa��o na caixa de texto ao lado do bot�o "Buscar T�tulo"
            e depois clique nesse bot�o. Os resultados da consulta ser�o exibidos na tabela abaixo.</p>
            
            <a href="ajuda.jsp">Voltar ao conte�do da ajuda</a>
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
