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
        <li class="active"> Cadastro </li>
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
        <div class="span4"> 
            <legend>Cadastro</legend>

            <p>No sistema PubMed, usuários que possuírem registro podem cadastrar novos 
                artigos, revistas, edições de revistas, termos Mesh  ou tipos de publicação, 
                seguindo os seguintes passos:</p>

            <p> 1- Selecione o tipo de dado que deseja cadastrar (artigo PubMed, revista,
                edição de revista, termo Mesh ou tipo de publicação) no submenu "Cadastrar" do cabeçalho.<br/>
            2- Preencha os campos com os valores da informação que deseja cadastrar e depois clique em "Salvar" para
            realizar o cadastro.<br/></p>
            <br />
            <img src="img/telaCadastroEdicaoRevista.png" />
            <br /><br />
            
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
