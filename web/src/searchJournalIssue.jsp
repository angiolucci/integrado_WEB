<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Buscar Edição da Revista</title>
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
        <li>    <a href="index.html">Consultar</a> <span class="divider">/</span>  </li>
	<li class="active"> Consultar Edição da Revista</li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span3">
        </div>
          
          <fieldset class="span8">
          <legend>  Busca Edição da Revista </legend>
          
          <form class="form-search" method="GET" action="../buscaEdicao">                             
                <button type="submit" class="btn">Buscar Edição </button> <input type="text" class="input-medium search-query" name="jissue" > 
          </form>
          <form autocomplete="on" class="span8" id="myform">
          
          </form>
          
      </fieldset>
          
      </article>
    </section>
      
       
      <script>
          
          $(document).ready(function(){
              
            
         });
      </script>
               <%@ include file="rodape.jsp"%>
    </body>
</html>