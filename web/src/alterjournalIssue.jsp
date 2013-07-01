<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Alterar Edição da Revista</title>
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
        <li>    <a href="index.jsp">Alterar</a> <span class="divider">/</span>  </li>
	<li class="active"> Alterar Edição da Revista</li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          <fieldset class="span4">
          <legend>  Alteração da Edição da Revista  </legend>
          
          <form class="form-search">                             
                <button type="submit" class="btn">Buscar Revista</button> <input type="text" class="input-medium search-query"> 
                <br><br>
                <p><span class="text-left"><label for="estado">Edição </label></span><span class="text-left">          
                    <select name="estado" id="estado" class="text-left"> 
                        <option value="" selected></option>
                        <option value="1"></option>
                    </select>
                    </span>
                </p>
          </form>
          <form autocomplete="on" class="span4" id="myform">
              
                <fieldset>
                    <legend> Edição </legend>  
                </fieldset>  
              <fieldset>
                <p><span class="text-left"><label for="title" > Título </label></span>    <span><input type="text" id="title"></span></p>
                <p><span class="text-left"><label for="issue"> Issue <span class="text-error" id="erroissue"></span> </label></span>    <span><input type="text" id="issue"></span></p>
                <p><span class="text-left"><label for="volume"> Volume <span class="text-error" id="errovolume"></span> </label></span><span><input type="text" id="volume"></span></p>
                <p><span class="text-left"><label for="pubdate"> Data <span class="text-error" id="erropubdate"></span></label></span><span><input type="text" id="pubdate"></span></p>
                <p><span class="text-left"><label for="citedmedium"> Cited Medium <span class="text-error" id="errocited"></span></label></span><span><input type="text" id="citedmedium"></span></p>
                
                <!--<p><span class="text-error"></span><span class="text-error" id="desc-erro"></span><span id="erro"></span></p>-->
                
                <p><input type="button" id="editar" value="Editar" class="btn"> <input type="submit" id="salvar" value="Salvar" class="btn"> </p>            
              </fieldset>
              
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
