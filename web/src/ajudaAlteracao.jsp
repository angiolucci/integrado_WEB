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
	<li>    <a href="index.html">Página Inicial</a> <span class="divider">/</span> </li>           
	<li> <a href="ajuda.jsp">Ajuda</a> <span class="divider">/</span> </li>
        <li class="active"> Alteração </li>
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
        <div class="span4"> 
            <legend>Alteração</legend>

            <p>No sistema PubMed, usuários que possuírem registro podem realizar a alteração
            de informações sobre artigos, revistas, edições e termos Mesh que estejam na base
            de dados, seguindo os seguintes passos:</p>

            <p> 1- Selecione o tipo de dado que deseja alterar (artigo PubMed, revista,
                edição de revista ou termo Mesh) no submenu "Alterar" do cabeçalho.<br/>
            2- Digite o título da informação na caixa de texto ao lado do botão "Buscar Título"
            e depois clique nesse botão. Os campos abaixo serão automaticamente preenchidos com os respectivos
            valores encontrados na busca.<br/>
            3- Modifique os valores que desejar e depois clique em "Salvar" para aplicar as modificações.</p>
            
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
