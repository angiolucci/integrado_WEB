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
        <li class="active"> Exclusão </li>
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
        <div class="span4"> 
            <legend>Exclusão</legend>

            <p>No sistema PubMed, usuários que possuírem registro podem excluir dados de 
                artigos, revistas, edições de revistas e termos Mesh que estejam na base
            de dados, seguindo os seguintes passos:</p>

            <p> 1- Selecione o tipo de dado que deseja excluir (artigo PubMed, revista,
                edição de revista ou termo Mesh) no submenu "Excluir" do cabeçalho.<br/>
            2- Digite o título da informação na caixa de texto ao lado do botão "Buscar Título"
            e depois clique nesse botão. Os campos abaixo serão automaticamente preenchidos com os respectivos
            valores encontrados na busca.<br/>
            3- Verifique se os valores dos campos são referentes aos da informação que deseja excluir e depois clique em "Apagar"
            para realizar a exclusão.</p>
            
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
