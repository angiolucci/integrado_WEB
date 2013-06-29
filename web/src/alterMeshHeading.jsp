<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Alterar Termos Mesh</title>
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
        <li>    <a href="index.html">Alterar</a> <span class="divider">/</span>  </li>
	<li class="active"> Alterar Termos Mesh </li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
        <fieldset class="span4">
          <legend>  Alteração Termos Mesh  </legend>
          
          <form class="form-search">                             
                <button type="submit" class="btn">Buscar Termo</button> <input type="text" class="input-medium search-query">                              
          </form>
          <form autocomplete="on" class="span4" id="myform">
              
                <fieldset>
                    <legend>MeshHeading</legend>  
                </fieldset>
              <fieldset>
                <p><span class="text-left"><label for="mesh"> Termos Mesh <span class="text-error" id="erromesh"></span> </label></span><span><input type="text" id="mesh"></span></p>                
                <!--<p><span class="text-error"></span><span class="text-error" id="desc-erro"></span><span id="erro"></span></p>-->
                
                <p><input type="button" id="editar" value="Editar" class="btn"> <input type="submit" id="salvar" value="Salvar" class="btn"> </p>            
              </fieldset>
              
          </form>
      </fieldset>  
      </article>
    </section>    
      <%@ include file="rodape.jsp"%>           
    </body>
    
    
</html>
