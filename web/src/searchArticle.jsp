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
	<li>    <a href="index.jsp">P�gina Inicial</a> <span class="divider">/</span> </li>
        <li>    <a href="index.jsp">Consultar</a> <span class="divider">/</span>  </li>
	<li class="active"> Consultar Artigo </li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span3">
        </div>
          
          <fieldset class="span8">
          <legend>  Buscar do Artigo  </legend>
          
          <form class="form-search" method="POST" action="buscaArtigo">                             
                <button type="submit" class="btn">Buscar T�tulo</button> <input type="text" class="input-medium search-query" id="title" name="title"> 
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


