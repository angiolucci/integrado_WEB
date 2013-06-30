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
	<li>    <a href="index.html">P�gina Inicial</a> <span class="divider">/</span> </li>           
	<li> <a href="ajuda.jsp">Ajuda</a> <span class="divider">/</span> </li>
        <li class="active"> Exclus�o </li>
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
        <div class="span4"> 
            <legend>Exclus�o</legend>

            <p>No sistema PubMed, usu�rios que possu�rem registro podem excluir dados de 
                artigos, revistas, edi��es de revistas e termos Mesh que estejam na base
            de dados, seguindo os seguintes passos:</p>

            <p> 1- Selecione o tipo de dado que deseja excluir (artigo PubMed, revista,
                edi��o de revista ou termo Mesh) no submenu "Excluir" do cabe�alho.<br/>
            2- Digite o t�tulo da informa��o na caixa de texto ao lado do bot�o "Buscar T�tulo"
            e depois clique nesse bot�o. Os campos abaixo ser�o automaticamente preenchidos com os respectivos
            valores encontrados na busca.<br/>
            3- Verifique se os valores dos campos s�o referentes aos da informa��o que deseja excluir e depois clique em "Apagar"
            para realizar a exclus�o.</p>
            
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
